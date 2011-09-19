class UserpostsController < ApplicationController
  # GET /userposts
  # GET /userposts.xml
  def index
    @userposts = Userpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @userposts }
    end
  end

  # GET /userposts/1
  # GET /userposts/1.xml
  def show
    @userpost = Userpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @userpost }
    end
  end

  # GET /userposts/new
  # GET /userposts/new.xml
  def new
    @userpost = Userpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @userpost }
    end
  end

  # GET /userposts/1/edit
  def edit
    @userpost = Userpost.find(params[:id])
  end

  # POST /userposts
  # POST /userposts.xml
  def create
    @user = User.find(params[:user_id])
    @userpost = Userpost.create(params[:userpost])
    @user.userposts << @userpost
    redirect_to user_path(@user)
  end

  # PUT /userposts/1
  # PUT /userposts/1.xml
  def update
    @userpost = Userpost.find(params[:id])

    respond_to do |format|
      if @userpost.update_attributes(params[:userpost])
        format.html { redirect_to(@userpost, :notice => 'Userpost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @userpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /userposts/1
  # DELETE /userposts/1.xml
  def destroy
    @userpost = Userpost.find(params[:id])
    @userpost.destroy

    respond_to do |format|
      format.html { redirect_to(userposts_url) }
      format.xml  { head :ok }
    end
  end
end
