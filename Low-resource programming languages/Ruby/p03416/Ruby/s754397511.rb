A, B = gets.split.map(&:to_i)

class Integer
  def palindromic?
    s = self.to_s
    s == s.reverse
  end
end

puts (A .. B).count(&:palindromic?)