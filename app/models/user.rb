class User < ApplicationRecord
  belongs_to :user_classification
  before_save { self.email = email.downcase }
  has_secure_password

  VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_NUMBER_REGEX = /\A[0-9]+\z/

  validates :password, presence: true, length: { in: 6..15 },
             format: { with: VALID_PASSWORD_REGEX }, allow_nil: true
  validates :last_name,  presence: true, length: { maximum: 10 }
  validates :first_name,  presence: true, length: { maximum: 10 }
  validates :zipcode,  presence: true, length: { is: 7 },
             format: { with: VALID_NUMBER_REGEX }
  validates :prefecture,  presence: true, length: { maximum: 5 }
  validates :municipality,  presence: true, length: { maximum: 10 }
  validates :address,  presence: true, length: { maximum: 15 }
  validates :apartments,  presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 128 },
             format: { with: VALID_EMAIL_REGEX },
             uniqueness: { case_sensitive: false }
  validates :phone_number,  presence: true, length: { maximum: 15 },
             format: { with: VALID_NUMBER_REGEX }

end
