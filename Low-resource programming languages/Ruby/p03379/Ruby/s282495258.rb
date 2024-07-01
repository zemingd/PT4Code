N = gets.to_i
X = gets.split.map(&:to_i)

x = X.sort

tmed = x[N / 2]

X.each do |d|
  if d != tmed
    puts tmed
  else
    puts x[N / 2 - 1]
  end
end