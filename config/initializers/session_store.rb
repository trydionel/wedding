# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wedding_session',
  :secret      => 'd8d7bbd0716207e27f00cb5092b6cbe58ec7d6180fa14a4d6bb4a69f5b96869e46f6bd8f26888802ace861339200a1b87120a4fbe59b4593576cc503ed3cc863'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
