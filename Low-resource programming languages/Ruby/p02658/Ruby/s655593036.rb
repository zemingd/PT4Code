n = gets.to_i
arr = gets.split.map(&:to_i)

if arr.include?(0)
  puts 0
  return
end

s = 1
max = 10 ** 18
arr.each do |num|
  s *= num
  if s > max
    puts -1
    return
  end
end
puts s