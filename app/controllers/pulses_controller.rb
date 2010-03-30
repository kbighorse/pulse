class PulsesController < ApplicationController
  # GET /pulses
  # GET /pulses.xml
  before_filter :find_pulse,
    :only => [:show, :edit, :update, :destroy]

  def index
    @pulses = Pulse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pulses }
    end
  end

  # GET /pulses/1
  # GET /pulses/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pulse }
    end
  end

  # GET /pulses/new
  # GET /pulses/new.xml
  def new
    @pulse = Pulse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pulse }
    end
  end

  # GET /pulses/1/edit
  def edit
  end

  # POST /pulses
  # POST /pulses.xml
  def create
    @pulse = Pulse.new(params[:pulse])

    respond_to do |format|
      if @pulse.save
        flash[:notice] = 'Pulse was successfully created.'
        format.html { redirect_to(@pulse) }
        format.xml  { render :xml => @pulse, :status => :created, :location => @pulse }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pulse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pulses/1
  # PUT /pulses/1.xml
  def update
    respond_to do |format|
      if @pulse.update_attributes(params[:pulse])
        flash[:notice] = 'Pulse was successfully updated.'
        format.html { redirect_to(@pulse) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pulse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pulses/1
  # DELETE /pulses/1.xml
  def destroy
    @pulse.destroy

    respond_to do |format|
      format.html { redirect_to(pulses_url) }
      format.xml  { head :ok }
    end
  end
  
  private
    def find_pulse
      @pulse = Pulse.find(params[:id])
    end
end
