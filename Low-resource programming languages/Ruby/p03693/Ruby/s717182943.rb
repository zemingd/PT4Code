rgb = gets.gsub(/[^\d]/, "").to_i
puts rgb%4 == 0? 'YES' : 'NO'
