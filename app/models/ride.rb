class Ride < ApplicationRecord
  belongs_to :driver
  belongs_to :customer

  def create_request
  	debugger
  end

end
