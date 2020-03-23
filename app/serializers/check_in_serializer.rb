class CheckInSerializer
  include FastJsonapi::ObjectSerializer
  
  belongs_to :user
  attributes :user_id, :location, :location_text, :created_at, :updated_at, :checked_in_at, :user

end
