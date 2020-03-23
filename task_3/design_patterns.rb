#visitor pattern implementation
class Visitor 
    def visit(subject)
      raise NotImpelementedError.new
    end
end

module Visitable
    def accept(visitor)
      visitor.visit(self)
    end
end

class Computer 
    include Visitable

    attr_accessor :motherbroad, :ram, :gpu, :cpu, :powersupply, :hdd, :ssd
end

#builder pattern implementation
class ComputerBuilder
    def initialize
        @computer = Computer.new    
    end

    def add_motherboard(motherbroad)
        @computer.motherbroad = motherbroad
    end

    def add_ram(ram)
        @computer.ram = ram
    end

    def add_cpu(cpu)
        @computer.cpu = cpu
    end

    def add_gpu(gpu)
        @computer.gpu = gpu
    end

    def add_powersupply(powersupply)
        @computer.powersupply = powersupply
    end

    def add_hdd(hdd)
        @computer.hdd = hdd
    end

    def add_ssd(ssd)
        @computer.ssd = ssd
    end

    def computer
        obj = @computer.dup
        @computer = Computer.new
        return obj
    end
end

class Order 
    include Visitable

    attr_accessor :products
    def initialize
        @products = []
    end
end

order = Order.new 
builder = ComputerBuilder.new
5.times do 
    builder.add_cpu "intel"
    builder.add_gpu "nvidia"
    builder.add_hdd "1 TB"
    builder.add_motherboard "gigabyte"
    builder.add_powersupply "500w"
    builder.add_ram "8 GB"
    builder.add_ssd "256 GB"
    order.products << builder.computer
end



class HardwarePrinterVisitor < Visitor
    def visit(computer)
      puts "Hardware: #{computer.cpu} #{computer.ram} #{computer.gpu} #{computer.powersupply} #{computer.hdd} #{computer.ssd}"
    end
end



order.products.last.accept(HardwarePrinterVisitor.new)


#decorator pattern implementation
class User
    attr_accessor :first_name, :last_name, :date_of_birth, :height, :weight
    def get_information
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end

class ConcreteUser < User
    def initialize(first_name, last_name, date_of_birth, height, weight)
        @first_name = first_name
        @last_name = last_name
        @date_of_birth = date_of_birth
        @height = height
        @weight = weight
    end

    def get_information
        puts "First name: #{first_name} Last name: #{last_name} Date of birth: #{date_of_birth} Height: #{height} Weight: #{weight}"
    end
end

class AdditionalDecorator < User
    attr_accessor :user
    
    def initialize(user)
        @user = user
    end

    def get_information
        @user.get_information
    end
end

class Contractor < AdditionalDecorator
    attr_accessor :user, :full_name, :body_mass_index

    def initialize(user)
        @user = user
    end

    def get_information
        @full_name = @user.first_name + " " + @user.last_name
        @body_mass_index = @user.weight / (@user.height ** 2) 
        date_formats = "#{@user.date_of_birth.strftime("%m/%d/%Y")} #{@user.date_of_birth.strftime("%Y%m%d")}" 
        "Full name: #{@full_name} Body mass index: #{@body_mass_index} Different dates: #{date_formats}"
    end
end

def client_code(user)
    puts user.get_information
end

require 'date'

basic = ConcreteUser.new("Denis", "Alhimovich", DateTime.new(2001, 01, 13), 1.85, 70)
puts "Basic: "
client_code(basic)

decorator = Contractor.new(basic)
decorator1 = Contractor.new(decorator)
puts "Decorated: "
client_code(decorator)