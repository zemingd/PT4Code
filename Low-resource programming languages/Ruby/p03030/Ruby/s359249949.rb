n = gets.chomp.to_i
inputs = []
ans = Array.new(n, 0)
n.times do |i|
    sp = gets.chomp.split(" ")
    sp << i
    sp[1] = sp[1].to_i
    inputs << sp
end
inputs.sort!{|a, b| a[1] <=> b[1]}.reverse!
i = 0
arr = inputs.sort_by{|v| [v[0], i+=1]}
arr.each do |_, _, res|
    puts res+1
end