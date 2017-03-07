module TopicsHelper
   def user_is_authorized_for_topics?
        current_user.admin?
   end

   def user_is_moderator_for_topics?
        current_user.moderator?
   end
end
