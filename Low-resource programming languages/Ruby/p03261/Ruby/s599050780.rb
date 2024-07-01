n = gets.to_i
ws = n.times.map{gets.chomp.chars}
ans = "Yes"
unless ws.size == ws.uniq.size
  ans = "No"
end
previous = ws.shift
ws.each do |w|
  unless previous[-1] == w[0]
    ans = "No"
    break
  end
  previous = w
end
puts ans
