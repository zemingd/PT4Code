N=gets.to_i
as=gets.split.map(&:to_i)
cnt=0
as.combination(2) do |a,b|
  cnt+=a*b
end
puts cnt
