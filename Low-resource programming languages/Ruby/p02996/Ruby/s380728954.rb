n = gets.chomp.to_i
inputs = []
count = 0
ans = true

n.times do
    inputs << gets.chomp.split(" ").map(&:to_i)
end

inputs.sort!{|a, b| a[1] <=> b[1]}

inputs.each do |a, b|
    count += a
    if count > b then
        ans = false
        break
    end
end

puts ans ? "Yes" : "No"