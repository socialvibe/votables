class VotablesController < ApplicationController
  # GET /votables
  # GET /votables.xml
  def index
    @votables = Votable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @votables }
    end
  end

  # GET /votables/1
  # GET /votables/1.xml
  def show
    @votable = Votable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @votable }
    end
  end

  # GET /votables/new
  # GET /votables/new.xml
  def new
    @votable = Votable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @votable }
    end
  end

  # GET /votables/1/edit
  def edit
    @votable = Votable.find(params[:id])
  end

  # POST /votables
  # POST /votables.xml
  def create
    @votable = Votable.new(params[:votable])

    respond_to do |format|
      if @votable.save
        format.html { redirect_to(@votable, :notice => 'Votable was successfully created.') }
        format.xml  { render :xml => @votable, :status => :created, :location => @votable }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @votable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /votables/1
  # PUT /votables/1.xml
  def update
    @votable = Votable.find(params[:id])

    respond_to do |format|
      if @votable.update_attributes(params[:votable])
        format.html { redirect_to(@votable, :notice => 'Votable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @votable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /votables/1
  # DELETE /votables/1.xml
  def destroy
    @votable = Votable.find(params[:id])
    @votable.destroy

    respond_to do |format|
      format.html { redirect_to(votables_url) }
      format.xml  { head :ok }
    end
  end
end
