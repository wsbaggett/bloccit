module UsersHelper

  def user_posts?
    (@user.posts.count > 0)
  end

  def user_comments?
    (@user.comments.count > 0)
  end

end
