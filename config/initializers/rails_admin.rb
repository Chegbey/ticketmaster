# # config/initializers/rails_admin.rb
# RailsAdmin.config do |config|
#   config.authenticate_with do
#     # Use sorcery's before filter to auth users
#     require_login
#   end
# end
#
# # app/controllers/application_controller.rb
# class ApplicationController
#   # Overwrite the method sorcery calls when it
#   # detects a non-authenticated request.
#   def not_authenticated
#     # Make sure that we reference the route from the main app.
#     redirect_to root_url
#   end
# end
