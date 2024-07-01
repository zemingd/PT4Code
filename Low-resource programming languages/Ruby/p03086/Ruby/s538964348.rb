# frozen_string_literal: true

def acgt?(str)
  str.chars.all? { |c| %w[A C G T].include?(c) }
end

s = gets.strip

rslt = 0
s.size.times do |i|
  (i..(s.size - 1)).each do |j|
    str = s[i..j]
    rslt = str.size if acgt?(str) && rslt < str.size
  end
end

puts rslt
