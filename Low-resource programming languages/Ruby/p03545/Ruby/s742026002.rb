a = gets.chomp.split("").map(&:to_i)
ans = ["-","+"]
for i in 1..8
  combi = []
  3.times do |j|
    combi[j] = i%2
    i /= 2
  end
  temp = a[0]+a[1]*(-1+2*combi[0])+a[2]*(-1+2*combi[1])+a[3]*(-1+2*combi[2])
  if temp == 7
    print a[0],ans[combi[0]],a[1],ans[combi[1]],a[2],ans[combi[2]],a[3],"=7\n"
    exit
  end
end