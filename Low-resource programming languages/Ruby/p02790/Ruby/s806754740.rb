a,b = gets.chomp.split.map(&:to_i)
puts (if a == b
    a.to_s * b
elsif a < b
    a.to_s * b
else b.to_s * a
end )