class OutdatedBrowserController < ApplicationController

	layout "sign"

	before_action :my_previous_url

	def index
	end

	def javascript_disabled
	end

	private

		def my_previous_url
			session[:my_previous_url] = if request.referer
				URI(request.referer).path
			else
				root_path
			end
		end
end