class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies

def self.freebies
    self.Freebie
end

def self.companies
    self.Freebie.company_id
end

def received_one?(item_name)
    self.freebies.each do |b|
        if b.item_name == item_name
            return true
        end
    return false
    end
end

def give_away(new_dev, free)
    if free.dev_id == new_dev.id
        puts "There was nothing to update!"
    else free.update(dev_id: new_dev.id)
        puts "This has been updated!"     
    end
    puts "Task completed!"   
end


end
