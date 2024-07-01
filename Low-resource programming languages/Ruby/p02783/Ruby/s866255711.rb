H, A = gets.split(" ").map(&:to_i)
ans=0
flg=0
hp=H
while flg==0
  ans += 1
  hp -= A
  flg = 1 if hp<=0
end
puts ans