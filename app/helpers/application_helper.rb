module ApplicationHelper

  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path, class: style) +  
      " ".html_safe + 
      (link_to 'Login', new_user_session_path, class: style)
    else 
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    end 
  end 

  def source_helper 
    if session[:source] 
      content_tag(:p, "Thanks for visiting me from #{session[:source]}", class: "source-greeting")
    end 
  end 

end
