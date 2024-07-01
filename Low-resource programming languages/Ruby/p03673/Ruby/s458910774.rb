N = gets.to_i
as = gets.chomp.split.map(&:to_i)

evens = as.select.with_index { |e, i| (i+1).even? }
odds = as.select.with_index { |e, i| (i+1).odd? }

if N.even?
  puts((evens.reverse + odds).join(' '))
else
  puts((odds.reverse + evens).join(' '))
end