#!/usr/bin/ruby

N = gets.chomp
S = gets.chomp

def count_em(string, substring)
    string.scan(/(?=#{substring})/).count
end

puts count_em(S ,"ABC")
