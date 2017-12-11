class PygmentsWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  def perform(ride_id)
  Ride.find(ride_id).update_attributes(:status => "complete")
  end
end

