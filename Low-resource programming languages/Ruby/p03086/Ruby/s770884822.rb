input = gets.chomp
arr = input.scan(/[ACGT]/)
i = 0
num = []
array = input.split("")
arr.each do |x|
  dix = array.index(x)
  return false unless dix
  num << dix
  array.delete_at(dix)
   
end
# Ruby2.4
#set = num.group_by(&:itself).transform_values(&:size)
set = num.group_by(&:itself)
.each_with_object({}) {|(k, v), hash| hash[k] = v.size}
s = set.max {|a, b| a[1] <=> b[1]}


puts s[1] rescue puts "0"

