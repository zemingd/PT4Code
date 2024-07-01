#!/usr/bin/ruby
# encoding: utf-8

# ABC 110 C

#comment
#文字の種類の数と、それぞれの文字の数との間に全単射が存在すればOK

S = gets.chomp
T = gets.chomp

sa = Array.new(26,0)
ta = Array.new(26,0)

def countKindofLetters(string,array)
  string.chars do |ch|
    array[ch.ord - "a".ord] += 1
  end
  return array
end

#main
src = countKindofLetters(S,sa).sort
dst = countKindofLetters(T,ta).sort

if src == dst 
  puts "Yes"
else
  puts "No"
end
