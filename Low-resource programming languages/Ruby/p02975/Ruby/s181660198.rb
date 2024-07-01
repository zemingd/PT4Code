n = gets.to_i
as = gets.split.map(&:to_i)
ans = 'Yes'

(-2..n-3).each do |i|
  unless as[i]^as[i+2] == as[i+1]
    ans = 'No'
  end
end
puts ans