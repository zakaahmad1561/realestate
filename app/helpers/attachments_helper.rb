module AttachmentsHelper
    def check_box_helper(pic)
        check_box_tag "files_ids[]", pic.id, false, class: 'selectable'
        
    end

    def user_image_helper(pic)
        if pic.image?
            cl_image_tag((Cloudinary::Utils.private_download_url(pic.key, 'jpg')), width: 300, height: 250, gravity: :auto, crop: :thumb, fetch_format: :auto)
        end
    end

    def user_video_helper(pic)
        if pic.video?
            video_tag pic.url,controls: true
        end
    end

    def user_documents_helper(pic)
        link_to pic.url, rails_blob_path(pic, disposition: "attachment") 
    end
end
