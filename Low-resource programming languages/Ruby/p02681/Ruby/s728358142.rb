#!/usr/bin/env ruby
require 'set'

def main
    s = gets.chomp
    t = gets.chomp
    puts s == t[0..-2] ? "Yes" : "No"
end

main

# s[0,6] # 0番目から6文字
# s[0..6] # 0番目から6番目まで
# s[5..-1] # 5番目から最後まで
# until s.empty? do