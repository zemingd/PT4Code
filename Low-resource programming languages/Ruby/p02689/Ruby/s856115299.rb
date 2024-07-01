n, m = gets.chomp.split.map &:to_i

tower = Struct.new(:height, :connect)
h = Array.new(0)

H = gets.chomp.split.map &:to_i
H.each do |i|
  h << tower.new(i,[])
end

m.times do
  a, b = gets.chomp.split.map &:to_i 
  h[a-1].connect << b-1
  h[b-1].connect << a-1
end

#p h

cnt = 0
h.each do |i|
  better_tower_flg = true
  i.connect.each do |j|
    better_tower_flg = false if h[j].height >= i.height
  end
#  p "i,i.connect #{i}, #{i.connect}, better_flg: #{better_tower_flg}"
  cnt += 1 if better_tower_flg
end

p cnt
