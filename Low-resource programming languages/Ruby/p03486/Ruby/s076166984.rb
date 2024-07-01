#!/usr/bin/ruby

s = STDIN.readline.chomp.split(//).sort
t = STDIN.readline.chomp.split(//).sort
s.each_with_index do |c, i|
  if t.select{|tt| c < tt}.length > 0
    puts "Yes"
    exit
  end
end
if s.join == t.join
  puts "No"
  exit
end
if s.join < t.join
  puts "Yes"
  exit
end
puts "No"
