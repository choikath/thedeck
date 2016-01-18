json.array!(@projects) do |project|
  json.extract! project, :id, :name, :subtitle, :score, :oldscore, :description, :metricLOS, :new, :datecreated, :dateunderreview, :datereviewed, :approved, :dateapproved, :dateedited, :sendto, :ondeck, :exists, :visiblepenn, :visibleRoy, :visibleBrian, :visibleDamien, :visibleBill, :visibleNeha, :visibleSubha, :visiblemhealth
  json.url project_url(project, format: :json)
end
