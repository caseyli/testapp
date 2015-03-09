class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles


  # find a role with the name "admin"
  # find the user
  # user.roles < role

  def add_role(role)
    self.roles << role
  end

  def add_role_by_name(role_name)
    role = Role.find_by(name: role_name)
    self.add_role(role)
  end

  def is_role?(role)
    self.roles.include?(role)
  end

  def is_role_by_name?(role_name)
    role = Role.find_by(name: role_name)
    self.is_role?(role)
  end

end
