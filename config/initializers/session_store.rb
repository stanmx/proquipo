# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_proquipo_session',
  :secret      => '9c1d0775bf56a6e2c85c1b213eec2fbba4dac43efdd99f8e10e702c3d8e793c13ed9314afa446959eb204b5808326d496b9e7810af076ecbfad29e32dc618cc4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
