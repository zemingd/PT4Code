s = gets.chomp.split.to_a
Q = gets.chomp.to_i
Query = Q.times.map do
  gets.chomp.split
end

(0..Q-1).each do |i|
  if Query[i][0] == "1"
    s = s.reverse
  else
    if Query[i][1] == "1"
      s = s.unshift(Query[i][2])
    else
      s = s.push(Query[i][2])
    end
  end
end

puts s.join.gsub(" ","")