# frozen_string_literal: true

def read
  gets.chomp
end

def solve(s)
  s.chars.map{|i|i=='+'?1:-1}.reduce(:+)
end

puts solve(*read)
