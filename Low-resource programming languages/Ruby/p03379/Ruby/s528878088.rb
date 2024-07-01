N = gets.to_i
X = gets.split.map(&:to_i)

m = X.sort

lv = m[(N - 1) / 2]
rv = m[N / 2]

X.each do |x|
  if lv == rv
    puts lv
  elsif x <= lv
    puts rv
  else
    puts lv
  end
end
