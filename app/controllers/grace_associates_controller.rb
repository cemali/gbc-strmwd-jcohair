class GraceAssociatesController < ApplicationController
  # GET /grace_associates
  # GET /grace_associates.json
  def index
    @grace_associates = GraceAssociate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grace_associates }
    end
  end

  # GET /grace_associates/1
  # GET /grace_associates/1.json
  def show
    @grace_associate = GraceAssociate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grace_associate }
    end
  end

  # GET /grace_associates/new
  # GET /grace_associates/new.json
  def new
    @grace_associate = GraceAssociate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grace_associate }
    end
  end

  # GET /grace_associates/1/edit
  def edit
    @grace_associate = GraceAssociate.find(params[:id])
  end

  # POST /grace_associates
  # POST /grace_associates.json
  def create
    @grace_associate = GraceAssociate.new(params[:grace_associate])

    respond_to do |format|
      if @grace_associate.save
        format.html { redirect_to @grace_associate, notice: 'Grace associate was successfully created.' }
        format.json { render json: @grace_associate, status: :created, location: @grace_associate }
      else
        format.html { render action: "new" }
        format.json { render json: @grace_associate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grace_associates/1
  # PUT /grace_associates/1.json
  def update
    @grace_associate = GraceAssociate.find(params[:id])

    respond_to do |format|
      if @grace_associate.update_attributes(params[:grace_associate])
        format.html { redirect_to @grace_associate, notice: 'Grace associate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grace_associate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grace_associates/1
  # DELETE /grace_associates/1.json
  def destroy
    @grace_associate = GraceAssociate.find(params[:id])
    @grace_associate.destroy

    respond_to do |format|
      format.html { redirect_to grace_associates_url }
      format.json { head :no_content }
    end
  end
end
