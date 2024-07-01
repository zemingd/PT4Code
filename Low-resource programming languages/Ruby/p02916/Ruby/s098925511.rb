
n = gets.to_i

a = gets.split.map(&:to_i) # ryori
b = gets.split.map(&:to_i) # manzoku
c = gets.split.map(&:to_i) # manzoku+++
manzoku = 0
prea = nil
n.times do |i|
  manzoku += b[a[i]-1]
  manzoku += c[a[i]-2] if prea == a[i] - 1
  prea = a[i]
end
p manzoku
# 14 74 150
