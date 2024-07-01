res = []
3.times {|i| res << gets.split(' ').map(&:to_i)}
n = gets.to_i
nums = []
n.times {|i| nums << gets.to_i}
nums.each {|n| 3.times {|i| res[i].map!{|r| r==n ? 0 : r}}}
new_res = res.transpose
if res[0].all? {|r| r == 0} || res[1].all? {|r| r == 0} || res[2].all? {|r| r == 0}
  puts "Yes"
elsif new_res[0].all? {|r| r == 0} || new_res[1].all? {|r| r == 0} || new_res[2].all? {|r| r == 0}
  puts "Yes"
elsif (res[0][0] == 0 && res[1][1] == 0 && res[2][2] == 0) || (res[0][2] == 0 && res[1][1] == 0 && res[2][0] == 0)
  puts "Yes"
else
  puts "No"
end