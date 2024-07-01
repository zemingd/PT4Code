#!/usr/bin/ruby

gets.to_i.times do
  n = gets.to_i + gets.to_i
  if n.to_s.size > 80
    puts "overflow"
  else
    puts n

end