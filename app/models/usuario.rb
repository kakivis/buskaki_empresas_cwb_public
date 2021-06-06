class Usuario < ApplicationRecord
  self.table_name = 'public.a1717456_usuarios'
  has_secure_password
  validates :nome, presence: true, length: {maximum: 100}
  validates :password, presence: true, length: {minimum: 6}
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  before_save { self.email = email.downcase }
  has_many :historico_buscas, -> { order("created_at DESC") }, :dependent => :destroy
end
