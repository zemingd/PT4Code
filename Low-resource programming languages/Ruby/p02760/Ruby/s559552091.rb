bingo = []
3.times { bingo << gets.split(' ').map(&:to_i) }
n = gets.to_i
ary = []
n.times { ary << gets.to_i }

tate1 = []
tate2 = []
tate3 = []
nana1 = []
nana2 = []

bingo.each.with_index(0) do |a,i|
  tate1 << a[0]
  tate2 << a[1]
  tate3 << a[2]
  nana1 << a[i]
  nana2 << a[2-i]
end

bingo << tate1
bingo << tate2
bingo << tate3
bingo << nana1
bingo << nana2

result = 'No'
bingo.each do |a|
  result = 'Yes' if a.all? { |i| ary.include?(i) }
end

puts result