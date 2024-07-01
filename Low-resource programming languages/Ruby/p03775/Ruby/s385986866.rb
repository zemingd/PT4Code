n = gets.to_i
a = Math.sqrt(n).to_i

loop do
  if (n % a).zero?
    break
  end
  a -= 1
end

puts (n / a).to_s.length