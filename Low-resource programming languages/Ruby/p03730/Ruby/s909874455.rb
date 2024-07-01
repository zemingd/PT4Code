A,B,C = gets.split.map(&:to_i)
X = Array.new
for i in 0..B-1
    X[i] =(A * (i+1)) % B
end
if X.include?(C)
    puts "YES"
else
    puts "NO"
end
