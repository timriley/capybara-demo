# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_capybara-demo_session',
  :secret      => '86e04b79657d040f64183ccb16cbbef017d0e4802ef2445bb78ad78ba798f722933370209d7f84bd9b3e4919391487865b68167715b317f8bb6d68d3ddea2637'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
