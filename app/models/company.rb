class Company < ActiveRecord::Base
has_many :freebies
has_many :devs, through: :freebies

def self.freebies
    self.Freebie
end

def self.devs
    new_dev = self.Freebie.dev_id
end

def give_freebie(dev, item_name, value)
    new = Freebie.create(company_id: self.id, dev_id: dev.id,
     item_name: item_name , value: value )
    new
end

def self.oldest_company
    self.order(founding_year: :asc)[0]

end


end
