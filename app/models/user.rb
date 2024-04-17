# email: string
# password_digest: string
# password: string virtual
# password_confirmation: string virtual

class User < ApplicationRecord
    has_secure_password

    # A more permissive email format regex
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Must be a valid email format" }
end
