n = gets.chomp.to_i
hArr = gets.chomp.split.collect{ |item| item.to_i}

maxc = 0
nowc = 0
nowh = hArr[0]
1.upto(n-1) do |ni|
  if hArr[ni] <= nowh
    nowc += 1
    nowh = hArr[ni]
    maxc = nowc if nowc >= maxc
  else
    maxc = nowc if nowc >= maxc
    nowh = hArr[ni]
    nowc = 0
  end
end

puts maxc
exit(1)

result = 0
if b==1
  result = 0
else
  count = 1
  while count < b
    count += a-1
    result +=1
  end
end

puts result