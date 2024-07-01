N = gets.chomp.to_i

s = []
N.times{|i|
  s[i] = gets.chomp.split("").sort
}

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

k = []

ss = s.uniq

ss.each{|i|
  tmp = 0
  s.each{|j|
    tmp += 1 if i == j
  }
  k.push(tmp)
}

ans = 0
k.each{|tmp|
  ans += tmp.combination(2)
}

p ans
