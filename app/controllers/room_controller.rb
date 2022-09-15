class RoomController < ApplicationController
  require "date"
  before_action :confirmation
  def index
  end
  
  def floor
  end

  def rooms
    @floor_num = params[:floor_id]

    
  end
  def room
    @room_num = params[:room_id]
    @floor_num = params[:floor_id]
    @room_info = Room.find_by(room_number:@room_num)
    if @room_info.finish_time != nil
      @clearn_time = 60*(@room_info.finish_time.hour - @room_info.start_time.hour) + (@room_info.finish_time.min - @room_info.start_time.min) 
    end
    # @start_time = 
    # @stop_time = 
    # データベースから該当のルーム情報を変数に保存
    # @type = 

  end

  def start
    @room_num = params[:room_id]
    @floor_num = params[:floor_id]
    @name = params[:name]
    @now = DateTime.now
    @room_info = Room.find_by(room_number:@room_num)
    @room_info.status = "清掃中"
    @room_info.start_time = @now
    @room_info.name = @name
    @room_info.save
    redirect_to("/room/select_rooms/#{@floor_num}/#{@room_num}")
  end

  def stop
    @room_num = params[:room_id]
    @floor_num = params[:floor_id]
    @now = DateTime.now
    Room.find_by(room_number:@room_num).start_time = @now
    @room_info = Room.find_by(room_number:@room_num)
    @room_info.status = "清掃済み"
    @room_info.finish_time = @now
    @room_info.save
    # 経過時間を計算
    redirect_to("/room/select_rooms/#{@floor_num}/#{@room_num}")
  end

end
