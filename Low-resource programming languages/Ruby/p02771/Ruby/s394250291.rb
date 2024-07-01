a, b, c = gets.chomp!.split().map(&:to_i)

txt = "No"
if a == b && a != c
    txt = "Yes"
elsif a == c && a != b
    txt = "Yes"
elsif b == c && a != b
    txt = "Yes"
end

puts txt