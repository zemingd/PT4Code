class Integer
  def divisor
    res = []
    1.upto((self**0.5)) do |i|
      if self % i == 0
        res.push i
        res.push self / i if i != self / i
      end
    end
    res.sort
  end
end

def answer_if_valid(x, a, d)
  b = a - d
  if x == a ** 5 - b ** 5
    puts "#{a} #{b}"
    exit
  end
end

x = gets.to_s.to_i

r = x % 5

x.divisor.select{|t| r == t % 5}.each do |d|
  
  left = (( x / d - d ** 4 ) / 5).abs
  
  if left == 0
    answer_if_valid(x,0,d)
    (d ** 3).divisor.each do |a|
      answer_if_valid(x, a, d)
    end
  end
  
  left.divisor.each do |a|
    answer_if_valid(x,  a, d)
    answer_if_valid(x, -a, d)
  end
end