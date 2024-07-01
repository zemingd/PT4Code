class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n = gets.to_i

renban = [*1..n]
kumiawase = renban.product(renban, renban)

result = 0
renban.each do |a|
  renban.each do |b|
    renban.each do |c|
      result += [a,b,c].gcd
    end
  end
end

p result