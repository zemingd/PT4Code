m = gets.match(/^\d+\/(\d+)\/\d+$/)
puts m[1].to_i > 4 ? "TBD" : "Heisei"