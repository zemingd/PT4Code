n = gets.to_i
line = gets.split(" ").map(&:to_i)

for value in 1..line.length+1 do
  ans = []
  if line.include?(value) then
    ans = line.select { |num| num == value }
  end
  puts ans.count
end