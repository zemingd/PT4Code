#set
n = gets.chomp.to_i
s = gets.chomp.split("")
count = 0
count_w = s.count('W')
count_e = n - count_w
count_ary = []
min_count = n
min_point = 0


#main
# Cumulative sum
0.upto(n - 1) do |i|
  if i == 0 then
    count_ary[i] = n - 1 - (count_w - 1) if s[i] == 'W'
    count_ary[i] = n - 1 - count_w if s[i] == 'E'
  else
    count += 1 if s[i - 1] == 'W'
    count_ary[i] = count + ((n - i - 1)  - (count_w - count - 1)) if s[i] == 'W'
    count_ary[i] = count + ((n - i - 1)  - (count_w - count)) if s[i] == 'E'
  end
end
count_ary.sort!

print ("#{count_ary[0]}\n")

# full search O(N^2)
# 0.upto(n - 1) do |i|
#   count = 0
#   if i == 0 then
#     (i + 1).upto(n - 1) do |k|
#       count += 1 if s[k] == 'E'
#     end
#   elsif i == n - 1 then
#     0.upto(i - 1) do |j|
#       count += 1 if s[j] == 'W'
#     end
#   else
#     0.upto(i - 1) do |j|
#       count += 1 if s[j] == 'W'
#     end
#     (i + 1).upto(n - 1) do |k|
#       count += 1 if s[k] == 'E'
#     end
#   end
#   min_count = count if min_count >= count
# end

