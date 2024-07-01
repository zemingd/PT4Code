n = gets.chomp.to_i
inputs = []
n.times do |i|
    s, _p = gets.chomp.split(" ")
    inputs << [s, _p.to_i, i+1]
end

inputs.sort!{|a, b| b[1] <=> a[1]}
inputs.sort!{|a, b| a[0] <=> b[0]}

inputs.each do |a, b, i|
    puts i
end