l,r = gets.split.map(&:to_i)

if l/2019 != r/2019 || l % 2019 == 0
  p 0
else
  ans = 2018
  l.upto(r-1) do |i|
    (l+1).upto(r) do |j|
      t = i*j % 2019
      ans = t if t < ans
    end
  end
  p ans
end
