def sum_of_digits(n)
    n.to_s.split("").map(&:to_i).sum
end

num = gets.chomp.to_i
sum = sum_of_digits(num)
puts num % sum ==0 ? 'Yes' :'No'