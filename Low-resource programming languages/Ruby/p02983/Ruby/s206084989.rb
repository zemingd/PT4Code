l,r=gets.split(' ').map(&:to_i)
if l/2019!=r/2019||l%2019==0
  p 0
else
  l%=2019
  r%=2019
  res=(l...r).map do |i|
    ((i+1)..r).map do |j|
      (i*j)%2019
    end.min
  end.min
  p res
end
