class ChangeColumnName < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      #status changes from backlog -> approved -> active -> complete
          t.rename :new, :backlog
          #approved already made with original schema
          t.rename :ondeck, :active
          t.rename :metricLOS, :complete
          
          #datecreated for all new/backlog.  
          #dateapproved moves to active status
          t.rename :dateunderreview, :datecompleted
    end
  end
end
