module GenerateUniqueToken
  extend ActiveSupport::Concern

  included do
    before_action :generate_token
  end

  private
  def generate_token
    self.token = loop do
      token = Digest::SHA1.hexdigest([rand, Time.now, rand].join)
      break token unless self.class.exists?(token: token)
    end
  end
end
