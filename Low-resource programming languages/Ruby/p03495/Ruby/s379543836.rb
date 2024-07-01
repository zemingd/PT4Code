n, k = gets.split(" ").map!{|i| i.to_i}
#puts n
#puts k
nn = gets.split(" ").map!{|i| i.to_i}.sort!
#p nn
#p nn.length

nh = nn.group_by(&:itself).map{ |k, v| [k, v.count] }.to_h

#p nh

ans = 0

if nh.length <= k
  puts 0
else
  narray = nh.values
  narray.sort!
#  p narray
  for i in 0...nh.length - k do
    ans += narray[i]
  end
  puts ans
end
