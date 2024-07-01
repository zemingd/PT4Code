n = gets.to_i
p_a = gets.chomp.split
diff_count = 0
n.times do |i|
    p_a[i] = p_a[i].to_i
    diff_count += 1 if i + 1 != p_a[i]
    break if diff_count > 2
end
puts diff_count <= 2 ? "YES" : "NO"