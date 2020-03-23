class MailReporter
    def send(from, to)
        if from.message != nil
            to.messages << from.message
            return true
        else
            return false
        end
    end
end