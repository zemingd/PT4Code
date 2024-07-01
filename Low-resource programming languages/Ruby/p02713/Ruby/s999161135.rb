class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n = gets.to_i

renban = [*1..n]
kumiawase = renban.repeated_combination(3).to_a

result = 0
kumiawase.each do |a|
  size = a.uniq.size
  if size == 1
    result += a.gcd
  elsif size == 2
    result += (a.gcd * 3)
  else
    result += (a.gcd * 6)
  end
end

puts result