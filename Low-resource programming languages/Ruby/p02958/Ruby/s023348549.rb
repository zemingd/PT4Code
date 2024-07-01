N = gets.chomp.to_i
A = gets.split(" ").map!{|i|i.to_i}
cnt = 0
for i in 0..(N-2)
    if A[i] != (i+1)
        cnt += 1
    end
end
if cnt > 2
    puts "NO"
else 
    puts "YES"
end
