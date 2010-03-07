# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bridalshop_session',
  :secret      => '80d008356bccbc2250fb1254aa575510840b967e0b4cb6a081c08d2021d2c87f05c2c00b184ecd9bf81b1a65df680c8c5df58c6b705d1f3e85c2ad89e71b37ce'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
