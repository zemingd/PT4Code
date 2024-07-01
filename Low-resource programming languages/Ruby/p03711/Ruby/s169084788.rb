a,b,c = gets.split(" ").map(&:to_i)
aa = [1,3,5,7,8,10,12]
bb = [4,6,9,11]
cc = [2]

if aa.include?(a) && aa.include?(b)
  puts 'Yes'
else
  puts 'No'
end