class RroldsController < ApplicationController
  # GET /rrolds
  # GET /rrolds.json
  def index
    @rrolds = Rrold.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rrolds }
    end
  end

  # GET /rrolds/1
  # GET /rrolds/1.json
  def show
    @rrold = Rrold.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rrold }
    end
  end

  # GET /rrolds/new
  # GET /rrolds/new.json
  def new
    @rrold = Rrold.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rrold }
    end
  end

  # GET /rrolds/1/edit
  def edit
    @rrold = Rrold.find(params[:id])
  end

  # POST /rrolds
  # POST /rrolds.json
  def create
    @rrold = Rrold.new(params[:rrold])

    respond_to do |format|
      if @rrold.save
        format.html { redirect_to @rrold, notice: 'Rrold was successfully created.' }
        format.json { render json: @rrold, status: :created, location: @rrold }
      else
        format.html { render action: "new" }
        format.json { render json: @rrold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rrolds/1
  # PUT /rrolds/1.json
  def update
    @rrold = Rrold.find(params[:id])

    respond_to do |format|
      if @rrold.update_attributes(params[:rrold])
        format.html { redirect_to @rrold, notice: 'Rrold was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rrold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rrolds/1
  # DELETE /rrolds/1.json
  def destroy
    @rrold = Rrold.find(params[:id])
    @rrold.destroy

    respond_to do |format|
      format.html { redirect_to rrolds_url }
      format.json { head :no_content }
    end
  end

  def feed
    @rrold = Rrold.order("enumber ASC")
  end


end
