N = gets.chomp.to_i
mat = readlines.map{|n| n.chomp.split(" ").map(&:to_i)}
sorted = mat.sort{|a,b| a[1]<=>b[1]}
sum = 0
ans = "Yes"
sorted.each do |pair|
    sum += pair[0]
    if not sum <= pair[1]
        ans = "No"
        break
    end
end

puts ans