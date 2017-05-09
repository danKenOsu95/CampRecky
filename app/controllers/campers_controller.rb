# Campers controller - contains scaffolded camper methods
# and methods that deal with membership models
class CampersController < ApplicationController
  before_action :set_camper, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!

  # GET method for the choose camps form
  def choose_camps
    set_camper
    @camps = Camp.all
    @memberships = @camper.memberships
  end

  # POST method for submitting a form
  def update_camps
    set_camper
    saved_camps = []
    rejected_camps = []
    if params[:membs] # array of camps that were selected in form
      params[:membs].each do |memb|
        m = Membership.new
        m.camper_id = @camper.id
        m.camp_id = memb
        if m.save
            saved_camps.push m
        else
            rejected_camps.push m
        end
      end

      respond_to do |format|
        if rejected_camps.empty?
          format.html { redirect_to camper_path, notice: 'Camps successfully added.' }
        else
          errors = "Not all camps were added. "
          rejected_camps.each do |r|
            if r.errors.any?
              errors.concat r.errors.full_messages.join(".\n") #add all error messages from validations
            end
          end
          format.html { redirect_to camper_path, notice: errors.to_s }
        end
      end

    end

  end

# DELETE method for removing a membership from a camper
  def destroy_camp
    set_camper
    if params[:camp]
      # find all the camper's membership with the camp they want to remove, delete the membership
      memb_to_remove = @camper.memberships.find_by camp: params[:camp]
      memb_to_remove.delete
    end
    redirect_to @camper
  end

  # method for rendering result of adding camps
  def response_choose_camps
    respond_to do |format|
      format.html { redirect_to camper_path, notice: 'Camps successfully added.' }
    end
  end


    # GET /campers
  def index
    @campers = Camper.all
  end

  # GET /campers/1
  def show

  end

  # GET /campers/new
  def new
    @camper = Camper.new
  end

  # GET /campers/1/edit
  def edit
  end

  # POST /campers
  # POST /campers.json
  def create
    @camper = Camper.new(camper_params)

    respond_to do |format|
      if @camper.save
        format.html { redirect_to @camper, notice: 'Camper was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /campers/1
  # PATCH/PUT /campers/1.json
  def update
    respond_to do |format|
      if @camper.update(camper_params)
        format.html { redirect_to @camper, notice: 'Camper was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /campers/1
  # DELETE /campers/1.json
  def destroy
    @camper.destroy
    respond_to do |format|
      format.html { redirect_to campers_url, notice: 'Camper was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_camper
    @camper = Camper.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def camper_params
    params.require(:camper).permit(:camp, :fullname, :gender, :birthday, :age, :gfullname, :gbirthday, :street, :city, :state, :zip, :homephone, :wcphone, :email, :authguardians, :prohibited, :medicalcompleted)
  end
end
