puts gets.scan(/R+/).map!(&:length).max || 0
