h,w = gets.split(" ").map { |e| e.to_i }
s = [Array.new(w+2) {"0"}]
for i in 0..h-1 do
  si = "0" + gets.chomp + "0"
  si = si.split("")
  s << si
end
s << Array.new(w+2) {"0"}

flag = 0 #0でok
each_flag = 0
array = [-1, 0, 1]
for i in 0..h-1 do #行
  break if flag != 0
  for j in 0..w-1 do #列
    break if flag != 0
    if s[i][j] == "#"
      around = [s[i][j-1], s[i][j+1], s[i-1][j], s[i+1][j]]
      if !around.include?("#")
        flag = 1
      end
    end
  end
end

if flag == 1
  puts "No"
else
  puts "Yes"
end
