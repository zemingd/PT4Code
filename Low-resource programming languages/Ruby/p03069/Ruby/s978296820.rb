n = gets.to_i
ary = gets.chomp.split("")

return puts 0 if !ary.include?('#') || !ary.include?('.')

sary = []
tmp = 0
n.times do |i|
  tmp += 1 if ary[i] == '#'
  sary << tmp
end

m = 99999999
(n + 1).times do |i|
  if i == 0
    t = n - sary[-1]
  elsif i == n
    t = sary[-1]
  else
    t = sary[i - 1] + (n - i) - (sary[-1] - sary[i - 1])
  end
  m = [m, t].min
end

puts m
