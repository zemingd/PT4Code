N = gets.to_i
x = gets.split.map(&:to_i)
y = x.sort

med_small = y[N/2 -1]
med_large = y[N/2]

0.upto(N-1) do |i|
  if x[i] >= med_large
    puts med_small
  else
    puts med_large
  end
end
