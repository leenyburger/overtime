class PostPolicy < ApplicationPolicy
  #This update method overrides update in application policy.
  #Pundit gives access to record and user from Application Policy. Here the record is the post.
  def update?
    record.user_id == user.id || admin_types.include?(user.type)
  end
end
