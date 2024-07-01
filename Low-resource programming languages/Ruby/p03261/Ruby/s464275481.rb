# frozen_string_literal: true

N = gets.to_i

WORDS = N.times.map { Kernel.gets }.map(&:chomp)

if WORDS.size != WORDS.uniq.size
  puts "No"
  exit 0
end

unless WORDS.each_cons(2).all? {|pair| pair[0][-1] == pair[1][0] }
  puts "No"
  exit 0
end

puts "Yes"
