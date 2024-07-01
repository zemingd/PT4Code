n,k = gets.chomp.split(" ").map(&:to_i)

dict = {}
arr = gets.chomp.split(" ").map(&:to_i)

arr.sort!
arr.each do |num|
  if dict[num].nil?
    dict[num] = 1
  else
    dict[num] += 1
  end
end
dict = dict.sort{|(k1,v1),(k2,v2)| v1<=>v2 }
s = arr.uniq.size

arr = arr.join

count = 0
while s > k
  arr.gsub!(dict.first[0].to_s, dict.last[0].to_s)
#  puts "arr : #{arr}"
  s = arr.split("").uniq.size
  count += dict[0][1]
  dict = {}
  arr.split("").each do |num|
    if dict[num].nil?
      dict[num] = 1
    else
      dict[num] += 1
    end
  end
  dict = dict.sort{|(k1,v1),(k2,v2)| v1<=>v2 }
end

#p arr
puts count
