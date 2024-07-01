#!/usr/bin/env ruby

string = gets.downcase

for char in "a".."z" do
    puts "#{char} : #{string.count(char)}"
end



