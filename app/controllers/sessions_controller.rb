class SessionsController < ApplicationController
  def new
  end

  def create 
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello' 
  end 


  # SessionsController post create redirects to the login page if :name is nil
  # Failure/Error: Session[:username] = params[:username]
  


  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end 

end
