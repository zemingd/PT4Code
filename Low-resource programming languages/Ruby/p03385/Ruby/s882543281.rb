a,b,k=gets.split(" ").map(&:to_i)
ary = Array.new()
for i in 0...k
   ary.push(a+i)
end

for i in 0...k
  ary.push(b-(k-i)+1) if !ary.include?(b-(k-i)+1)
end

for aob in ary
  puts aob
end