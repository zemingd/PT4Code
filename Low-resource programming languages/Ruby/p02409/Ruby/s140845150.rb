house = { "1" => Array.new(3).map{Array.new(10,0)}, "2" => Array.new(3).map{Array.new(10,0)}, "3" => Array.new(3).map{Array.new(10,0)}, "4" => Array.new(3).map{Array.new(10,0)}}

gets.to_i.times do 
  b, f, r, v = gets.split
  f = f.to_i - 1
  r = r.to_i - 1
  v = v.to_i
  house[b][f][r] += v
end

house.each_with_index{|(key, value), i|
  value.each{|v|
    puts " #{v.join(" ")}"
  }
  if i != house.size - 1
    puts "####################"
  end
}
