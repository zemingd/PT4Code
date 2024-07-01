N = gets.to_i
As = gets.split.map(&:to_i)

bool = true

As.each do |num|
    bool = (num % 3 == 0 || num % 5 == 0) if num.even?
    break unless bool
end

puts bool ? 'APPROVED' : 'DENIED'
