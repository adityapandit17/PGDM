class NoDue < ApplicationRecord
  belongs_to :user
  belongs_to :academic_session
end
