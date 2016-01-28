class Project < ActiveRecord::Base
    after_create :defaults #this will call the 'defaults' method whenever a new entry is created
    def user_ids=(e) #setter
      write_attribute :user_ids, (e.collect {|f| f.to_i}).to_json
    end
    
    def user_ids
      ActiveSupport::JSON.decode(read_attribute(:user_ids))
    end
    
    def defaults
      self.update_attributes(exists: true) if exists == nil
      self.update_attributes(datecreated: DateTime.current())
      self.update_attributes(new: true) if new == nil
    end
end
