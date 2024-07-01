#!/usr/bin/env ruby
require 'set'

def main
    c = gets.chomp
    puts (["a","i","u","e","o"].include?(c)) ? "vowel" : "consonant"
end

main