ary = []
5.times { ary << gets.to_i }
remainder = 0
wait_times = []
count = 0
ary.each do |i|
  wait_times << 10 - i % 10 unless i % 10 == 0
end
count = 0
ary.each { |i| count += i }
wait_times.each { |i| count += i }
puts count - wait_times.max