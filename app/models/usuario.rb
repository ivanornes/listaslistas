require 'digest/sha2'

class Usuario < ActiveRecord::Base
validates :nombre, :presence => true, :uniqueness => true

validates :password, :confirmation => true
attr_accessor :password_confirmation
attr_reader :password

validate :password_must_be_present

class << self
	def authenticate(nombre, password)
			if usuario = find_by_nombre(nombre)
				if usuario.hashed_password == encrypt_password(password, usuario.salt)
				usuario
			end
		end
	end
	def encrypt_password(password, salt)
		Digest::SHA2.hexdigest(password + "wibble" + salt)
	end
end

def password=(password)
@password = password
	if password.present?
		generate_salt
		self.hashed_password = self.class.encrypt_password(password, salt)
	end
end

after_destroy :ensure_an_admin_remains

def ensure_an_admin_remains
	if User.count.zero?
		raise "Can't delete last user"
	end
end

private
	def password_must_be_present
		errors.add(:password, "Missing password") unless hashed_password.present?
	end

	def generate_salt
		self.salt = self.object_id.to_s + rand.to_s
	end
end

