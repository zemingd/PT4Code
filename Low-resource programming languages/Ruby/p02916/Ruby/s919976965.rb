n = ARGF.gets.to_i
a = ARGF.gets.split.map(&:to_i)
b = ARGF.gets.split.map(&:to_i)
c = ARGF.gets.split.map(&:to_i)

#$stderr.puts "#{a}"

a0 = -100
sum = a.inject(0) do |s, aa|
  old = a0
  a0 = aa
#  $stderr.puts "sum=#{sum}, b=#{b[aa-1]}, c=#{(old + 1 == aa) ? c[old-1] : 0}"
  s + b[aa-1] + ((old + 1 == aa) ? c[old-1] : 0)
end
puts sum
