a = gets.chomp.split.map(&:to_i)
ans = 100000000
a.permutation(3) do |a, b, c|
    tmp = (a-b).abs + (c-b).abs
    ans = [ans, tmp].min
end
puts ans