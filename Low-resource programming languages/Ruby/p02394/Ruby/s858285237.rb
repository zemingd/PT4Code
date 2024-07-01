ar = gets.chomp.split.map(&:to_i)
flg = 1

if ar[0] < ar[2] + ar[4]
    flg = 0
end

if ar[2] - ar[4] < 0  
    flg = 0
end

if ar[1] < ar[3] + ar[4]
    flg = 0
end

if ar[3] - ar[4] < 0 
    flg = 0
end

if flg == 1
    puts "Yes"
else
    puts "No"
end