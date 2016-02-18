class Project < ActiveRecord::Base
    after_create :defaults #this will call the 'defaults' method whenever a new entry is created
    # before_save :update_timestamps
    
    def user_ids=(e) #setter
      write_attribute :user_ids, (e.collect {|f| f.to_i}).to_json
    end
    
    def user_ids
      ActiveSupport::JSON.decode(read_attribute(:user_ids))
    end
    
    def defaults
      self.update_attributes(exists: true) if exists == nil
      self.update_attributes(datecreated: Time.zone.now)
      self.update_attributes(backlog: true) if backlog == nil
      self.update_attributes(dateapproved: Time.zone.now) if approved == true
      self.update_attributes(datecompleted: Time.zone.now) if complete == true
    end
    
    # def update_timestamps
    #   self.update_attributes(dateapproved: Time.zone.now) if approved == true
    #   self.update_attributes(datecompleted: Time.zone.now) if complete == true
    #   self.update_attributes(dateedited: Time.zone.now)
    # end
    #
end
