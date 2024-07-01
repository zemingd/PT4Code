str = gets.chomp
q = gets.to_i
querys = q.times.map {gets.split}

querys.each do |ary|
  if ary[0] == "1"
    str.reverse!
  else
    if ary[1] == "1"
      str = ary[2] + str
    else
      str += ary[2]
    end
  end
end

puts str