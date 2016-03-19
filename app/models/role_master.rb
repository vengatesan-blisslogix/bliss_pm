class RoleMaster < ActiveRecord::Base
   has_many :users
   has_many :role_activity_mappings
   validates :role_name, presence: true, uniqueness: true
end
