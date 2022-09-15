floor_num8=['4','5','6','7','8']
room_num8 = ['31','32','33','34','35','36','37','38','39','40','41','51','52','53','54','55','56']
floor_num9=['9']
room_num9 = ['31','33','34','35','36','37','38','39','40','41','51','52','53','54','55','56']
floor_num12=['10','11','12']
room_num12 = ['31','32','33','36','37','38','39','40','41','51','52','53','54','55','56']

floor_num8.each do |floor|
    room_num8.each do |room|
        if ['53','54','38','37'].include?(room) and (floor+room) != "653"
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"Flex")
        elsif ['55','39','36'].include?(room) or ['756','653','651','551','441','541','741','834','734','534','831','731','631'].include?(floor+room)
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"King")
        else    
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"Twin")
        end

    end
end

floor_num9.each do |floor|
    room_num9.each do |room|
        if ['53','54','38','37'].include?(room)
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"Flex")
        elsif ['55','39','36','31','51'].include?(room)
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"King")
        else    
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"Twin")
        end

    end
end

floor_num12.each do |floor|
    room_num12.each do |room|
        if ['53','54','38','37'].include?(room) and (floor+room) != "1253"
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"Flex")
        elsif ['55','39','36'].include?(room) or ['1033','1131'].include?(floor+room)
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"King")
        else    
            Room.create(room_number:floor+room, floor_number:floor, status:"未清掃", default_type:"Twin")
        end
    end
end
User.create(name:"employee",admin:false, password:"employee")
User.create(name:"inspector",admin:true, password:"inspector")

Admin.create()