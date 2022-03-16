# email:string
# password_digest:string
#
# password:string (virtual attribute)
# password_confirmation:string (virtual attribute)

class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
    validates :password, format: { with: /\A[([a-z]|[A-Z])0-9_-]{6,40}/ }
end
