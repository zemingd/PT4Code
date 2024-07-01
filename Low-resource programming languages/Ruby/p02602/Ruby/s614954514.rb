n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
ans = []
st = 0
en = k
(n-k).times do 
    if a[st] < a[en]
        puts "Yes"
    else
        puts "No"
    end
    st += 1
    en += 1
end