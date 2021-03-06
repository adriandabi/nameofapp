if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_zkT...',
    secret_key: 'sk_test_I0e...'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
Rails.configuration.stripe[:publishable_key]
