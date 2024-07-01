ary = gets.split.map{|a|a.to_i}
n  = ary[0]
q = ary[1]
s = gets.chomp
lr = []
for i in(0..q-1)
  lr[i] = gets.split.map{|a|a.to_i}
end
array =[]
for i in(0..n-2)
  if (s[i] == "A") && (s[i+1] == "C") then
    array.push(i+1)
  end
end
for i in(0..q-1)
  nums=(lr[i][0]..(lr[i][1]-1)).to_a
  puts (nums&array).size
end
