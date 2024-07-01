require 'pp'

n = gets.to_i
a_n = Array.new(n)
n.times do |i|
    x = gets.chomp!
    a_n[i] = x
end

x = {'AC' => 0, "WA" => 0, "TLE" => 0, "RE" => 0}
a_n.each do |a|
    x[a] += 1
end

x.each do |x, n|
    puts "#{x} x #{n}"
end
