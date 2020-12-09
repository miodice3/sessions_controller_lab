class SessionsController < ApplicationController
  def new
  end

  # def create  
  #   if params[:name].empty? || params[:name] == nil
  #     #byebug
  #     redirect_to '/login'
  #   else
  #     session[:name] = params[:name]
  #     redirect_to '/'
  #   end
  # end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
