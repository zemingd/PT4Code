n = gets.to_i
strs = gets.chomp.split(' ').map(&:to_i)

even_ary = strs.uniq.select{ |num| num.even? }
if even_ary.all? {|num| num % 3 == 0 || num % 5 == 0 }
  puts 'APPROVED'
else
  puts 'DENIED'
end