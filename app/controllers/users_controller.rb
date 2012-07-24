class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  #def index
  #  @token ||= FBGraph::Canvas.parse_signed_request('bf61e4dd28a2b6be82bc0bb295fc94db', params[:signed_request])
  #  client = FBGraph::Client.new(:client_id => @token['user_id'],:secret_id =>'bf61e4dd28a2b6be82bc0bb295fc94db' ,:token => @token['oauth_token'])
  #  @info = client.selection.me.info!
  #  @country = client.fql.query("SELECT current_location FROM user WHERE uid = #{@token['user_id']}")
  #  User.store_data(@info)
  #  logger.info "############INFO#{@info.inspect}"
  #  logger.info "############Token#{@country.inspect}"
  #  logger.info "############Token#{@country.inspect}"
  #  @users = User.all
  #
  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render :json => @users }
  #  end
  #end
  def facebook
    #@token ||= FBGraph::Canvas.parse_signed_request('bf61e4dd28a2b6be82bc0bb295fc94db', params[:signed_request])
    #client = FBGraph::Client.new(:client_id => @token['user_id'],:secret_id =>'bf61e4dd28a2b6be82bc0bb295fc94db' ,:token => @token['oauth_token'])
    #@user = User.create(client)
    @user = User.find_by_uid(current_user.uid)
    #redirect_to users_path
  end

  def index
    logger.info "=====================================index================================================"
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end
  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, :notice => 'User was successfully created.' }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to root_path, :notice => 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
