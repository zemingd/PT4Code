class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

input = gets.to_i

base = (1..input).to_a.repeated_permutation(3).to_a

sum = 0
base.each do |array|
  sum += array.gcd
end

puts sum
