import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :<%= @app_name %>, <%= @endpoint_module %>,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  server: false<%= if @mailer do %>

# In test we don't send emails.
config :<%= @app_name %>, <%= @web_namespace %>.Mailer,
  adapter: Swoosh.Adapters.Test<% end %>

# Print only warnings and errors during test
config :logger, level: :warn
