gets
a = gets.strip.split(" ").map(&:to_i)
q = gets.strip.to_i
q.times do |i|
  b,c = gets.strip.split(" ").map(&:to_i)
  a.map!{|x| x==b ? c : x}
  puts "#{a.sum}"
end

