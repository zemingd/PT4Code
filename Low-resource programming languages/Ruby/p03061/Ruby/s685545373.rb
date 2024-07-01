n = gets.to_i
num = gets.split.map(&:to_i)
pr = []
require 'prime'
Prime.each(3000) do |prime|
  pr.push(prime)
end
p pr.length
mark = Array.new(pr.length).map{Array.new(4,10**2)}
for i in 0..n-1
  inst = Array.new(pr.length,0)
  for j in 0..pr.length-1
    if num[i] % pr[j] == 0
      while num[i] % pr[j] == 0
        inst[j] += 1
        num[i] /= pr[j]
      end
    end
    if inst[j] < mark[j][1]
      mark[j][2] = mark[j][0]
      mark[j][3] = mark[j][1]
      mark[j][0] = i
      mark[j][1] = inst[j]
    elsif inst[j] < mark[j][3]
      mark[j][2] = i
      mark[j][3] = inst[j]
    end
  end
end
check2 = Array.new(n,1)
for i in 0..pr.length-1
  check2[mark[i][0]] *= (pr[i]**(mark[i][3] - mark[i][1]))
end
check2.sort!
ans = check2[-1]
for i in 0..pr.length-1
  ans *= pr[i]**mark[i][1]
end
puts ans
