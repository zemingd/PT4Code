raw1 = gets.split(" ").map{|nn|nn.to_i}
n = raw1[0]
m = raw1[1]
c = raw1[2]
b = gets.split(" ").map{|nn|nn.to_i}

ass = []
n.times do
  ass << gets.split(" ").map{|nn|nn.to_i}
end

ans = 0
addition = 0
ass.each do|elem|
  addition = 0
  m.times do|idx|
    addition += elem[idx] * b[idx]
  end
  addition += c
  if addition > 0
    ans += 1
  end
end

puts ans.to_s()