module PostsHelper
    def set_image(post)
        
        if post.image.present?
          post.image_url
        else
          "placeholder.png"
        end
    end
end
