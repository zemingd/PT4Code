n,k,q = gets.split(" ").map(&:to_i)
a = Array.new(q)
point = Array.new(n, 0)
0.step(q-1){|i|
    a[i] = gets.to_i
    point[a[i]-1] += 1
}
if q < k
    1.step(n){
        puts "Yes"
    }
else
    0.step(n-1){|i|
        if q - point[i] >= k
            puts "No"
        else
            puts "Yes"
        end
    }
end