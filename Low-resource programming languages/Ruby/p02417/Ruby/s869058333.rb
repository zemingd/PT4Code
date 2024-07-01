#!/usr/bin/env ruby

string = $stdin.read.downcase

for char in "a".."z" do
    puts "#{char} : #{string.count(char)}"
end
