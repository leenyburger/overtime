class PostPolicy < ApplicationPolicy
  #This update method overrides update in application policy.
  #Pundit gives access to record and user from Application Policy. Here the record is the post.
  def update?
    return true if post_approved? && admin?
    return true if user_or_admin && !post_approved?
  end

  private

    def user_or_admin
      record.user_id == user.id || admin?
    end

    def admin?
      admin_types.include?(user.type)
    end

    def post_approved?
      record.approved?
    end

end
