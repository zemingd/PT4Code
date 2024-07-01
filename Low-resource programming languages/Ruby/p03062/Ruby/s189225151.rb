n = gets.to_i
a = gets.split.map(&:to_i)

if a.count(&:negative?).even?
  puts a.map(&:abs).inject(:+)
else
  a.map!(&:abs).sort!
  puts a.inject(:+) - a[0] * 2
end