class LocationController < ApplicationController

	def get_user_location

		ip_address = request.ip
		if ip_address.present?
		location_data = Geocoder.search(ip_address).first
		if request.location.present?
		@user_location = {
			latitude: request.location.latitude,
			longitude: request.location.longitude,
			city: request.location.city,
        		state: request.location.state,
        		country: request.location.country
		}
		else
			@user_location = {error: "Location information not available."}
		end
		end
	end
end
