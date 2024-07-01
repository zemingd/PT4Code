class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n = gets.to_i

renban = [*1..n]
kumiawase = renban.repeated_combination(3).to_a

puts kumiawase.inject (0){|result, item| result + item.gcd }