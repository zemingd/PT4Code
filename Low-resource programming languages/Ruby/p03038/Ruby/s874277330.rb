=begin
x = gets.to_i
y = false
z = 2

while y == false
  if x % z ==0
    y = true
  else
    z += 1
  end
end

puts z
=end
n,m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
raptor = []
saurus = []

m.times do
b,c = gets.split.map(&:to_i)
raptor << b
saurus << c
end

empty = []

for k in 0..m-1
  for i in 0..(n - 1)
    if cards[i] < saurus[k]
      empty << cards[i]
    end
  end


  if empty.size > raptor[k]
    empty.sort!
    empty.slice!((raptor[k])..(empty.size))
    empty.each do |j|
    cards[cards.find_index{|z| z==j}] = saurus[k]
    end
  else
    empty.each do |j|
    cards[cards.find_index{|z| z==j}] = saurus[k]
    end
  end
  empty  = []
end

sum = 0
for h in 0..(cards.size-1)
  sum += cards[h]
end
puts sum