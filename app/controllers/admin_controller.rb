class AdminController < ApplicationController
    before_action :confirmation
    before_action :inspector
    def share_edit
        @admin_info = Admin.find_by(id:1)
    end
    def share_edited
        @admin_info = Admin.find_by(id:1)
        @admin_info.phone_number = params[:phone_number]
        @admin_info.donden = params[:donden]
        @admin_info.stay = params[:stay]
        @admin_info.info = params[:info]
        @admin_info.save
        flash[:notice] = "変更を反映しました"
        redirect_to("/user/#{session[:user_id]}")
    end    

    def floor_edit
    end

    def rooms_edit
        @floor_num= params[:floor_num]
    end
    

    def rooms_edited
        room_num = ['31','32','33','34','35','36','37','38','39','40','41','51','52','53','54','55','56']
        @floor_num = params[:num]
        @info = params[:info]
        room_num.each do |num|
            room = Room.find_by(room_number:@floor_num+num)
            room.stuation = @info[@floor_num+num]["situation"]
            room.room_type = @info[@floor_num+num]["type"]
            room.save
        end
        flash[:notice] = "変更を反映しました"
        redirect_to("/user/admin/floor_edit")

    end


    def reset
        Room.update_all(name:nil, start_time:nil, finish_time:nil, status:"未清掃",room_type:"指定なし",memo:nil,phone_num:nil,stuation:"清掃不要")
        flash[:notice] = "部屋情報をすべてリセットしました"
        redirect_to("/user/admin/floor_edit")

    end
end
