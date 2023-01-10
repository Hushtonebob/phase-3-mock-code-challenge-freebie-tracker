class Freebie < ActiveRecord::Base
belongs_to :dev
belongs_to :company

def self.dev
    self.Dev
end

def self.company
    self.Company
end

def print_details
    "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}."
end

end
