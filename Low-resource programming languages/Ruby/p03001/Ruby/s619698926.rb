w,h,x,y = gets.split.map(&:to_i)

if x == 0 && y == 0
  puts "0 0"
  exit
end
# 縦
tate = h*[(w-x),x].min

# 横
yoko = w*[(h-y),y].min

ans = ([tate,yoko].max).to_f
two = tate == yoko ? 1 : 0

puts "#{ans} #{two}"