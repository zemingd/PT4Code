N = gets.to_i
X = gets.split.map(&:to_i)

x = X.sort

med = x[N / 2 - 1]
med2 = x[N / 2]

X.each do |d|
  if d >= med2
    puts med
  else
    puts med2
  end
end