N = gets.chomp.to_i
W = []
N.times do |n|
  W[n] = gets.chomp
end

flag = true
flag = false if W.uniq.size() != W.size()
N.times do |n|
  if n != 0 then
    flag = false if W[n-1][-1] != W[n][0]
  end
end
flag ? print("Yes") : print("No")
