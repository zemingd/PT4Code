def cin; gets.split.map(&:to_i) end

# exit if $0 != __FILE__

# n, *x = cin
# s = gets.chomp

# puts n

n = gets.to_i
ws = cin
m = 10**18

[*(0..(n-2))].each do |x|
  sa = ws[0..x].inject(:+) - ws[(x+1)..(n-1)].inject(:+)
  sa = sa.abs
  m = sa if m > sa
end

p m