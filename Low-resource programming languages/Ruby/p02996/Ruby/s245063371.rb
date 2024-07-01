n = gets.to_i
tasks = n.times.map { gets.strip.split.map(&:to_i) }.sort_by(&:last)

time = 0
flag = true
tasks.each do |duration, limit|
  time += duration
  if time > limit
    flag = false
    break
  end
end

puts(flag ? "Yes" : "No")
