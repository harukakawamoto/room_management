Rails.application.routes.draw do
  get "/" => 'user#index'
  get "logout" => "user#logout"
  get "login" => "user#login"
  post "login" => "user#login"
  get "user/admin/share_edit" => "admin#share_edit"
  get "user/admin/floor_edit" => "admin#floor_edit"
  get "user/admin/rooms_edit/:floor_num" => "admin#rooms_edit"
  post "user/admin/rooms_edited/:num" => "admin#rooms_edited"
  get "user/admin/room/reset" => "admin#reset"
  post "user/admin/share_edited" => "admin#share_edited"
  get "user/:id" => "room#index"
  get "room/select_floor" => "room#floor"
  get "room/select_rooms/:floor_id" => "room#rooms"
  get "room/select_rooms/:floor_id/:room_id" => "room#room"
  post "room/select_rooms/:floor_id/:room_id/start" => "room#start"
  post "room/select_rooms/:floor_id/:room_id/stop" => "room#stop"
end
