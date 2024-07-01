N = gets.to_i
As = gets.split.map(&:to_i)

bool = false

As.each do |num|
    bool = true if num.even? && (num % 3 == 0 || num % 5 == 0)
end

puts bool ? 'APPROVED' : 'DENIED'
