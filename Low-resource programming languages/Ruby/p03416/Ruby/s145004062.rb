a,b = gets.split.map(&:to_i)
ctr = 0
(a..b).to_a.each do |n|
  if n.to_s[0] == n.to_s[-1]
    if n.to_s[1] == n.to_s[-2]
      ctr += 1
    end
  else
    next 
  end
end

puts ctr
