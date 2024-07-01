class Integer
  def combination(k)
    return 1 if k.zero?

    (self - k + 1..self).inject(:*) / k.factorial
  end

  def permutation(k)
    return 1 if k.zero?

    (self - k + 1..self).inject(:*)
  end

  def factorial
    return 1 if self.zero?

    (1..self).inject(:*)
  end
end

n = gets.to_i
count = Hash.new(0)
n.times.each do
  s = gets.chomp.chars.sort
  count[s] += 1
end
puts count.values.map{ |n| n.combination(2) }.inject(:+)