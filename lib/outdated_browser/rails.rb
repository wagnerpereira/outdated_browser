module OutdatedBrowser
	class Engine < ::Rails::Engine
		config.to_prepare do
		  ApplicationController.helper(OutdatedBrowserHelper)
		end
	end
end