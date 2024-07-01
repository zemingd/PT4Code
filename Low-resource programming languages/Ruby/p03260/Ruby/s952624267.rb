# ABC333
A,B = gets.chomp.split(" ").map(&:to_i)
flg = false
for i in 1..3 do
    if A * B * i % 2 == 1
        flg = true2 2
        break
    end
end
if flg == true
    puts "Yes"
elsif flg == false
    puts "No"
end