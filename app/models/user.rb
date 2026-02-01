class User < ApplicationRecord
  attr_accessor :remember_token, :activation_token

  before_save :downcase_email
  before_create :create_activation_digest

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-\.]+@[a-z\d\-.]+.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true, allow_blank: true
  validates :password_confirmation, presence: true, length: { minimum: 6 }, allow_nil: true, allow_blank: true

  has_secure_password


  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def current_user?(user)
    user == current_user
  end


  def forget
    update_attribute(:remember_digest, nil)
  end



def authenticated?(attribute, token)
  digest = send("#{attribute}_digest")
  Rails.logger.debug "Token: #{token.inspect}"
  Rails.logger.debug "Digest: #{digest.inspect}"
  Rails.logger.debug "Digest compete: #{BCrypt::Password.new(digest)}"
  Rails.logger.debug "isPassword: #{BCrypt::Password.new(digest).is_password?(token)}"
  return false if digest.nil?
  BCrypt::Password.new(digest).is_password?(token)
end

  class << self
      def digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
      end

      def new_token
        SecureRandom.urlsafe_base64
      end
  end


  private

    def downcase_email
      self.email = email.downcase
    end
    def create_activation_digest
      self.activation_token = User.new_token
      self.activation_digest = User.digest(activation_token)

      Rails.logger.debug "Create-Token: #{activation_token}"
      Rails.logger.debug "Create-digest: #{activation_digest}"
    end
end
