N = gets.to_i
S = gets.chomp.split("")

ans = []
S.each do |a|
    X = (a.ord + N) % 26 + 52
    ans << X.chr
end

puts ans.join("")