ary = $stdin.readlines
n = ary.first.to_i
ary.shift
ary.map!(&:chomp!)
answer='Yes'
if ary.uniq.size != ary.size then
  answer='No'
end
i =0
(ary.size-1).times{|i|
  if ary[i][-1] != ary[i+1][0] then
    answer='No'
    break
  end
  i+=1
}

puts answer
