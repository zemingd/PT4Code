s = gets.chomp.split.to_a
Q = gets.chomp.to_i
Query = Q.times.map do
  gets.chomp.split(" ")
end
flag = true

(0..Q-1).each do |i|
  if Query[i][0] == "1"
    flag = !flag
  else
    if flag
      if Query[i][1] == "1"
        s = s.unshift(Query[i][2])
      else
        s = s.push(Query[i][2])
      end
    else
      if Query[i][1] == "1"
        s = s.push(Query[i][2])
      else
        s = s.unshift(Query[i][2])
      end
    end
  end
end

if flag
  puts s.join.to_s
else
  puts s.reverse.join.to_s
end