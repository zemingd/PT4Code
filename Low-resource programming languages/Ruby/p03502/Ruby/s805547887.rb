def sum_of_digits(n)
    n.to_s.split('').map(&:to_i).inject(0,&:+)
end

num = gets.to_i

sum = sum_of_digits(num)
binding.pry
puts (num % sum == 0 ? 'Yes' : 'No')