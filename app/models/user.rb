class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :cnic
  # Roles
  enum role: { investor: "investor", admin: "admin" }

  # Set default role
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= "investor"
  end

  validates :role, presence: true
end
