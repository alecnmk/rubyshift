# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_train_test_session',
  :secret      => '6ee9a52223059f945c29d34b66c77a8420f7914a5dd064866115a5489679a7da38f378b5ea644f7c17d32448c236f82fc3d0817e3a0683d4c2d2310d5f9f0576'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
