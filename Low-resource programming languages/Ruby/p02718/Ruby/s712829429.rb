line = gets.chop.split.map(&:to_f)
a = line
line = gets.chop.split.map(&:to_f)
productPosts = line


productDisplayNum = a[1]
tmp = productDisplayNum

def sum(arr)
  hoge = 0
  arr.each do |i|
    hoge += i;
  end
  return hoge
end

sumPost = sum productPosts
productPosts.each do |postNum|
  if postNum / sumPost >= (1 / (4 * productDisplayNum))
    tmp = tmp - 1;
  end
end

if tmp <= 0
  puts "Yes"
else
  puts "No"
end
