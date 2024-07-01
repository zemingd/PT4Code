a,b,c,d = gets.chomp.chars
 
['+','-'].repeated_permutation(3) do |op1,op2,op3|
    e = a+op1+b+op2+c+op3+d
    x = eval(e)
    if x == 7
        puts "#{e}=7"
        exit
    end
end
puts "hoge"