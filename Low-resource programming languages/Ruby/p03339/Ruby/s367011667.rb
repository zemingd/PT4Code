#set
n = gets.chomp.to_i
s = gets.chomp.split("")
count = 0
min_count = n
min_point = 0


#main
# if n == 2 then
#   0.upto(n - 1) do |i|
#     count = 0
#     if n == 2 && i == 0 then
#       if s[1] == 'E' then
#         count += 1
#       end
#     else
#       if s[0] == 'W' then
#         count += 1
#       end
#     end
#     min_count = count if min_count > count
#   end
# else  
  0.upto(n - 1) do |i|
    count = 0
    if i == 0 then
      (i + 1).upto(n - 1) do |k|
        count += 1 if s[k] == 'E'
      end
    elsif i == n - 1 then
      0.upto(i - 1) do |j|
        count += 1 if s[j] == 'W'
      end
    else
      0.upto(i - 1) do |j|
        count += 1 if s[j] == 'W'
      end
      (i + 1).upto(n - 1) do |k|
        count += 1 if s[k] == 'E'
      end
    end
    # print ("i=#{i}\n")
    # print ("count=#{count}\n")
    min_count = count if min_count >= count
  end
# end

p min_count