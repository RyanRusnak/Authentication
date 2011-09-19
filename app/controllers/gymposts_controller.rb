class GympostsController < ApplicationController
  # GET /gymposts
  # GET /gymposts.xml
  def index
    @gymposts = Gympost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gymposts }
    end
  end

  # GET /gymposts/1
  # GET /gymposts/1.xml
  def show
    @gympost = Gympost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gympost }
    end
  end

  # GET /gymposts/new
  # GET /gymposts/new.xml
  def new
    @gympost = Gympost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gympost }
    end
  end

  # GET /gymposts/1/edit
  def edit
    @gympost = Gympost.find(params[:id])
  end

  # POST /gymposts
  # POST /gymposts.xml
  def create
      @gym = Gym.find(params[:gym_id])
      @gympost = @gym.gymposts.create(params[:gympost])
      redirect_to gym_path(@gym)
  end

  # PUT /gymposts/1
  # PUT /gymposts/1.xml
  def update
    @gympost = Gympost.find(params[:id])

    respond_to do |format|
      if @gympost.update_attributes(params[:gympost])
        format.html { redirect_to(@gympost, :notice => 'Gympost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gympost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gymposts/1
  # DELETE /gymposts/1.xml
  def destroy
    @gympost = Gympost.find(params[:id])
    @gympost.destroy

    respond_to do |format|
      format.html { redirect_to(gymposts_url) }
      format.xml  { head :ok }
    end
  end
end
