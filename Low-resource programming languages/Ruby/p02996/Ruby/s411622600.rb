N = gets.to_i
AB = Array.new(N) do
  gets.strip.split(" ").map(&:to_i)
end

AB.sort_by! do |e|
  -e.last
end

sum = 0
t = AB.first.last
AB.each do |e|
  y = sum - (t - e.last)

  if y + e.first > e.last
    puts "No"
    exit 0
  end

  sum += e.first
end

puts "Yes"
