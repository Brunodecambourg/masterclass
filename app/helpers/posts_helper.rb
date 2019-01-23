# encoding: utf-8
module PostsHelper

  def post_html_body post
    body = post['content']
    body_w_links = body.gsub(POST_LINK_REGEXP, '\1').gsub(POST_URL_REGEXP) do |url|
      ActionController::Base.helpers.link_to(url, url, class: 'msg__link')
    end

    body_w_cta_1 = body_w_links.gsub(POST_CTA1_REGEXP) do |url|
      render(partial: 'posts/cta_1', locals: { post: post })
    end  

    body_w_cta_full = body_w_cta_1.gsub(POST_CTA2_REGEXP) do |url|
      ""#render(partial: 'posts/cta_2', locals: { post: post })
    end  

    #return ActionController::Base.helpers.simple_format(ActionController::Base.helpers.sanitize(body_w_cta_full))
    return ActionController::Base.helpers.simple_format(body_w_cta_full, {}, sanitize: true).
      gsub(/<br \/>/, '').html_safe
  end

end