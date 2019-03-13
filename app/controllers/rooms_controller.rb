class RoomsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @room = @hotel.rooms.create(room_params)
    redirect_to hotel_path(@hotel)
  end

  def destroy
    @hotel = Hotel.find(params[:hotel_id])
    @room = @hotel.rooms.find(params[:id])
    @room.destroy
    redirect_to hotel_path(@hotel)
  end

  private
    def room_params
      params.require(:room).permit(:name, :description)
    end
end
