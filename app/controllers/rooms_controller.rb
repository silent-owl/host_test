class RoomsController < ApplicationController
  include UsersHelper
  before_action :logged_in_user, only: [:index, :show]
  before_action :banned
  def index 
  	@rooms = Room.all
  end
   def show
    @room = Room.find(params[:id])
    
  end
  def new
  	@room = Room.new
  	@room.owner = current_user.name
  	@room.name = 'Room_'+Room.maximum(:id).to_i.next.to_s
  	@room.save
  	redirect_to rooms_url
  end
  def delete_rooms
    if params[:room_check]
      Room.where(id: params[:room_check]).destroy_all
    end 
    redirect_to rooms_url
  end
end
