import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lights_out_game, LightsOutGameWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "NPVewUN137p9F30qLXOOCEFhlCli05wimO+9gLiltxpDMBVDfd4EyF9CKQmZfe5I",
  server: false

# In test we don't send emails.
config :lights_out_game, LightsOutGame.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  # Enable helpful, but potentially expensive runtime checks
  enable_expensive_runtime_checks: true
