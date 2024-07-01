require 'prime'

N = gets.chomp.to_i

s = []
N.times{|i|
  s[i] = gets.chomp.split("").sort
}

s.sort!

class Integer

  def recfact(n)
    if (n <= 16) then
      r = self
      for i in (self + 1)...(self + n) do
        r *= i
      end
      return r
    end
    i = n.div(2)
    return self.recfact(i) * (self + i).recfact(n - i)
  end

  def factorial
    return 1.recfact(self)
  end

  def permutation(k)
    return 1 if k.zero?

    self.factorial.div((self - k).factorial)
  end

  def combination(k)
    return 1 if k.zero?

    self.permutation(k).div(k.factorial)
  end

end

count = 1
ans = 0
for i in 0...(N-1) do
  if s[i] == s[i+1]
    count += 1
  elsif count > 1
    ans += count.combination(2)
    count = 1
  end
end

ans += count.combination(2) if count > 1

p ans
