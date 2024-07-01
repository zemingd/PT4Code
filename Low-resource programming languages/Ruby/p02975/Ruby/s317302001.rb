n = gets.to_i
as = gets.split.map(&:to_i)

ans = 'Yes'
(-1..n-2).each do |i|
  if as[i-1]^as[i+1] != as[i]
    ans = 'No'
  end
end

puts ans