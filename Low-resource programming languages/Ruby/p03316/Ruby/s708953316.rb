N = gets.chomp
sn = N.split('').map(&:to_i).inject(:+)
n = N.to_i

if n % sn == 0
  puts 'Yes'
else
  puts 'No'
end