a, b = gets.chomp.split(" ").map(&:to_f)
arr = []
ans = []

a.step(a+0.9, 0.1) do |i|
    arr << (i / 0.08).floor
end

b.step(b+0.9, 0.1) do |i|
    if arr.include?((i / 0.1).floor)
        ans << (i / 0.1).floor
        break
    end
end

if !ans.empty?
    puts ans.min
else
    puts -1
end