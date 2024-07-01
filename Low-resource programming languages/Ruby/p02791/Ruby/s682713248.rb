N=gets.to_i
p=gets.chomp.split.map(&:to_i)
min=300000
ans=0
p.each do |i|
  if i < min
    min = i
    ans += 1
  end
end
puts ans