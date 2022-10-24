# Be sure to restart your server when you modify this file.

# Avoid  issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing () in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-

Rails.application.config.middleware.insert_before 0, Rack:: do
  allow do
    origins "*"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
