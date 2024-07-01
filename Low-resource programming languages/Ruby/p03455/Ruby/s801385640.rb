#2つの整数a,bが与えられて、そのa,bの積が偶数か奇数かを求める。
a,b = gets.chomp.split(" ").map(&:to_i) 
if a * b % 2 == 0
    p 'Even'
    return
elsif a * b % 2 == 1
    p 'Odd'    
end