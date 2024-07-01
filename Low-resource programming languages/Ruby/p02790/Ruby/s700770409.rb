a, b = gets.chop.split.map(&:to_i)

str = ''

if a == b
  a.times {
    str += a.to_s
  }
elsif a < b
  b.times {
    str += a.to_s
  }
else
  a.times {
    str += b.to_s
  }
end

puts str