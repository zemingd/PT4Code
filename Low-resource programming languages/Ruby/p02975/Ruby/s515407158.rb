n = gets.to_i
as = gets.split.map(&:to_i)
cnt=as[0]

for i in 1..n-1
  cnt=cnt^as[i]
end
puts "Yes" if cnt==0
puts "No" if cnt!=0
