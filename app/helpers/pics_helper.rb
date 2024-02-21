module PicsHelper
    def find_like_id(pic, user)
        pic.likes.find_by(user_id: user.id).id
      end
end
