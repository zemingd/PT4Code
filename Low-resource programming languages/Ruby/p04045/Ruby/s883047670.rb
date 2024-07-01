n, k = gets.chomp.split(' ').map(&:to_i)
d = gets.chomp.split(" ").map(&:to_i)
genzai = n
while true do
  keta = []
  ((Math.log10(genzai)).to_i + 1).times do |i|
    waru = 10 ** i
    keta << (genzai / waru) % 10
  end
  if keta & d == []
    puts genzai
    break
  end
  genzai += 1
end