# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pulse_session',
  :secret      => '99ef5704680620be20ec5f501ae38042da2fdc7bc9af481f05a4cc5d9037661577f3b1f09de5ee48016edc1048f2192d64e5aaea223ed42e31102295a39b1730'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
