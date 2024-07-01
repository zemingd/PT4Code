str = gets.chomp
q = gets.to_i
querys = q.times.map {gets.split}

dir = true

querys.each do |ary|
  if ary[0] == "1"
    dir = !dir
  else
    if (ary[1] == "1" && dir) || (ary[1] == "2" && !dir)
      str = ary[2] + str
    else
      str += ary[2]
    end
  end
end

puts dir ? str : str.reverse!