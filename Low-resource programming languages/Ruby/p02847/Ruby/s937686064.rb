A, B, X = gets.chomp.split.map(&:to_i)

def price(num)
  A * num + B * (num.to_s.length)
end

a = (1..10**9).bsearch{|x| price(x) > X }
if !a.nil? && a <= 10 ** 9
  p a - 1
else
  p 10 ** 9
end
