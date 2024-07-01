# https://atcoder.jp/contests/abc148/tasks/abc148_a



A = gets.to_i
B = gets.to_i

m=[]
m<<false
m<<false
m<<false
m<<false
m[A]=true
m[B]=true
if  !m[1]
    puts 1
elsif !m[2]
    puts 2
elsif !m[3]
    puts 3
end

