# coding: utf-8
N, K = gets.split.map {|e| e.to_i}
h = gets.split.map {|e| e.to_i}

h.sort!.reverse!

K.times do |i|
  h.shift
end

if h.size == 0
  puts 0
else
  puts h.reduce(&:+)
end
            




