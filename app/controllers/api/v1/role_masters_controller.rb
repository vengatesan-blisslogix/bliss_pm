class Api::V1::RoleMastersController < ApplicationController
before_action :set_role, only: [:show, :edit, :update]



 def index
    @roles = RoleMaster.all
    render json: @roles
 end
def show
	render json: @role
end
def create

    @role = RoleMaster.new
    @role.role_name = params[:role_name]
    @role.active =params[:active]
    if @role.save
    	@all_activity = ActivityMaster.all
        @all_activity.each do |act|
    	RoleActivityMapping.create(role_master_id: @role.id, activity_master_id: act.id, access_value: 1, user_id: current_user.id)

        end
        role_list
     else
        render json: { valid: false, error: @role.errors }, status: 404
     end
    
end

 def update   
    @role.role_name = params[:role_name]
    @role.active =params[:active]
    if @role.save
    	@all_activity = ActivityMaster.all
        @all_activity.each do |act|
    	#RoleActivityMapping.create(role_master_id: @role.id, activity_master_id: act.id, access_value: 1, user_id: current_user.id)

        end       
       render json: @role
     else
        render json: { valid: false, error: @role.errors }, status: 404
     end
  end
private

def role_list
	 @roles = RoleMaster.all
	 render json: @roles
end
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = RoleMaster.find_by_id(params[:id])
      if @role
      else
      	render json: { valid: false}, status: 404
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    #def role_master_params
      #params.require(:role_master).permit(:role_name)
    #end
end

