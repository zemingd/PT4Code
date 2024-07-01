n=gets.to_i
a=gets.split(" ").map(&:to_i)
b=false

(0..n-1).each do |x|
    if a[x]%2==0
        if a[x]%3==0 || a[x]%5==0
            b=true
        else
            puts "DENIED"
            exit
        end
    end
end
puts "APPROVED"