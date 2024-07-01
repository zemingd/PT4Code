#!/usr/bin/ruby

ARGF.each_line do |line|
    line = line.chomp
    line = line.split(" ")
    line = line.map { |x| x.to_i }
    tmp = line[0] + line[1]
    tmp = tmp.to_s
    puts "#{tmp.length}\n"
end