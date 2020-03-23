require 'design_patterns'

describe ComputerBuilder do
    it 'creates computer class' do
        builder = ComputerBuilder.new
        expect(builder.computer).to be_kind_of(Computer)
    end

    it 'has building methods' do
        builder = ComputerBuilder.new
        expect(builder).to respond_to(:add_motherboard, :add_ram, :add_gpu, :add_powersupply, :add_hdd, :add_ssd, :add_cpu)
    end
end

describe Order do
    before(:each) do
        5.times do
            @computers = []  
            computer = Computer.new
            @computers << computer 
        end
    end

    it 'creates array of computers' do
        order = Order.new
        order.products = @computers
        expect(order.products).to be_kind_of(Array)
    end
end

describe ConcreteUser do
    it 'has user info' do
        user = ConcreteUser.new("Name", "LName", DateTime.new(1,1,1), 1, 1)
        expect(user).to respond_to(:first_name, :last_name, :date_of_birth, :height, :weight)
    end
end