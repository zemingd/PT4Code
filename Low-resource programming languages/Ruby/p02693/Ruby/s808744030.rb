baisuu = gets.to_i
kazu = gets

ijyou = kazu.split(" ")[0].to_i
ika = kazu.split(" ")[1].to_i
for num in ijyou..ika do
    if num % baisuu == 0
        puts "OK"
        @ppap = "AA"
        return 
    end
end
if @ppap == nil
    puts "NG"
end