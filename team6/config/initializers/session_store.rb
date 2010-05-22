# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_shift_session',
  :secret      => '790b030b22aee278e14212fb26b0903b42f48ea6c7ec0ce8dd2af80f6b4e8e14b2d8cead46c5f4926b6a903e0b98836e3450d3125301be84815fab0551cd04f1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
