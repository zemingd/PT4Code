n,m = gets.chomp.split(" ").map(&:to_i)
result = []

(n).times do |i|
  tmp = gets.chomp.split(" ")
  tmp.shift
  if result.empty? then
    result = tmp
  else
    result = tmp & result
  end
end

print result.size
