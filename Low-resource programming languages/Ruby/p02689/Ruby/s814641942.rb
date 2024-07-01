n,m = $stdin.gets.chomp.split(' ').map(&:to_i)
h = $stdin.gets.chomp.split(' ').map(&:to_i)
arr = []
m.times do
  arr.push $stdin.gets.chomp.split(' ').map(&:to_i)
end
ans = 0
n.times do |k|
  motonum = k + 1
  flag1 = 0 #一つもないと0
  flag2 = 1 #高くないと折れる
  arr.each do |part|

	if part.index(motonum)
      flag1 = 1
      sakinum = (part - [motonum]).first
      if h[sakinum -1] >= h[k]
        flag2 = 0
        break
      end        
     end
    end
  if flag1 == 0
    ans +=1
  elsif flag1 == 1 && flag2 == 1
    ans += 1
  end
end

puts ans