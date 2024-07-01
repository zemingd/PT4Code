ns = gets.chomp

sn = ns.split('').map(&:to_i).reduce(:+)
n = ns.to_i
if n % sn == 0
  puts 'Yes'
else
  puts 'No'
end
