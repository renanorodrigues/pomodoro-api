class Topic < ApplicationRecord
  belongs_to :user

  def as_json(options = {})
    super(
      include: { user: { only: %i[ user_full_name email ] } }
    )
  end
end
