n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.sort!.reverse!

s = a[m-1]

all = a.inject(:+)

if (s * 4 * m) >= all
  puts 'Yes'
else
  puts 'No'
end
