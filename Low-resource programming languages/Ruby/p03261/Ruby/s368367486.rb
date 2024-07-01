n = gets.to_i
w = []

judge = 0
w << gets.chomp!
(n-1).times do 
    input_str = gets.chomp!

    if w.include?(input_str)
        judge = 1
        w << input_str
    else
        w << input_str
    end

    judge = 1 unless w[-2][-1] == w[-1][0] 

end

if judge == 0
    puts "Yes"
else
    puts "No"
end
