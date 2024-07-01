a,b=gets.split.map(&:to_i)
cnt = 0
(1..a).each do |i|
  (1..b).each do |j|
    cnt+=1 if i==j
  end
end

puts cnt