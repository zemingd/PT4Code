n = gets.chomp.to_i
P = gets.chomp.split.map(&:to_i)
Q = gets.chomp.split.map(&:to_i)
array = [*1..n]
arr = array.permutation(n).to_a
a=0
b=0
for i in 0..arr.length-1
    if P==arr[i]
        a = i
    end
    if Q==arr[i]
        b = i
    end
end 

puts (a-b).abs