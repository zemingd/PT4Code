n,m = gets.chomp.split.map(&:to_i)
city = Array.new(n,0)
m.times do
  input = gets.chomp.split.map(&:to_i)
  city[input[0]-1]+=1
  city[input[1]-1]+=1
end

puts city