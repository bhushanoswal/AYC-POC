class SessionController < ApplicationController

  def create
    @token ||= FBGraph::Canvas.parse_signed_request('bf61e4dd28a2b6be82bc0bb295fc94db', params[:signed_request])
    client = FBGraph::Client.new(:client_id => @token['user_id'],:secret_id =>'bf61e4dd28a2b6be82bc0bb295fc94db' ,:token => @token['oauth_token'])
    user = User.create(client)
    if user
      session[:current_user_id] = user.id
      redirect_to facebook_users_path
    end
  end

  #def session_destroy
  #  session[:user_id] = nil
  #end
end
