#!/usr/bin/ruby

require 'pp'

N  = gets.chomp.to_i
A  = gets.chomp.split(" ").map(&:to_i)

A.each{|n|
  if n%2 == 0
    if n % 3 == 0 || n % 5 == 0
      next
    else
      puts 'DENIED'
      exit
    end
  end

}

puts "APPRIVED"
