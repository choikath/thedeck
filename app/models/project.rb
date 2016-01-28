class Project < ActiveRecord::Base
    after_create :defaults #this will call the 'defaults' method whenever a new entry is created
    
    
    def defaults
      self.update_attributes(exists: true) if exists == nil
      self.update_attributes(datecreated: DateTime.current())
      self.update_attributes(new: true) if new == nil
    end
end
