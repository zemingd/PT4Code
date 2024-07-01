# abc094 C
n = gets.to_i
x = gets.split.map(&:to_i)

mmin = x.sort[n/2 - 1]
mmax = x.sort[n/2]

x.each do |xx|
  if xx <= mmin
    p mmax
  elsif xx >= mmax
    p mmin
  end
end
