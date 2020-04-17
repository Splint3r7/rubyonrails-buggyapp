# frozen_string_literal: true

# 
# JSON Web Token implementation for extra abstraction for query string
#
module JsonWebToken

  def self.encode(payload, _exp = 24.hours.from_now)
    # payload[:exp] = exp.to_i # this is temporarily disable, but when we merge,
    # we set the time to one month after agreement with product team.
    Base64.encode64(JWT.encode(payload, "JWT"))
  end

  def self.decode(_token)
    token = Base64.decode64(_token)
    decoded = JWT.decode(token, ENV['JWT_SECRET_KEY'])[0]
    HashWithIndifferentAccess.new decoded
  rescue StandardError => e
    Bugsnag.notify(e)
  end
end