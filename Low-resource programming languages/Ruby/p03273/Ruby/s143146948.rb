H, W = gets.split(" ").map(&:to_i)

bitmap = []
for i in 0...H do
  line = gets.chomp.split("")
  bitmap[i] = line
end

bitmap.map!{|line|
  unless !!line.find_index("#") then
    line = nil
  end
  line
}

bitmap.compact!

bitmap = bitmap.transpose

bitmap.map!{|line|
  unless !!line.find_index("#") then
    line = nil
  end
  line
}

bitmap.compact!

bitmap = bitmap.transpose

bitmap.each{|line|
  puts line.join
}