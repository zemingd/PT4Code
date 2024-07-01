w,h,x,y = gets.split.map(&:to_i)

if (x == 0 && y == 0) || (x==w && y==h) || (x==0 && y==h) || (x==w && y==0)
  puts "#{h*y/2.0} 0"
  exit
end
# 縦
tate = h*[(w-x).to_f,x.to_f].min

# 横
yoko = w*[(h-y).to_f,y.to_f].min

ans = ([tate,yoko].max).to_f
two = tate == yoko ? 1 : 0

puts "#{ans} #{two}"