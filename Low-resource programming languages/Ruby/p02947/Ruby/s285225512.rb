require 'prime'

N = gets.chomp.to_i

s = []
N.times{|i|
  s[i] = gets.chomp.split("").sort
}

s.sort!

class Integer
  def combination(k)
    return 1 if k.zero?

    self.permutation(k) / k.factorial
  end

  def permutation(k)
    return 1 if k.zero?

    self.factorial / (self - k).factorial
  end

  def factorial
    return 1 if self.zero?

    x = 2 ** ( self - self.to_s(2).count("1"))

    y = 1
    for i in 3..self do

      if i.prime? then
        tmp = 0
        j = 1
        while self.div(i **j) > 0
          tmp += self.div(i ** j)
          j += 1
        end
        y *= i ** tmp
       end
    end
    x * y
  end

end

tmp = 1
ans = 0
(N-1).times{|i|
  if s[i] == s[i+1]
    tmp += 1
  else
    ans += tmp.combination(2)
    tmp = 1
  end
}

ans += tmp.combination(2)

p ans
