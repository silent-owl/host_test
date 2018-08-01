module UsersHelper
  def banned
    if current_user.present? && current_user.ban?
        redirect_to root_url
        flash[:danger] = "You are banned on this site!"
    end 
  end 

  def logged_in_user
    unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
    end
  end
  	
end
