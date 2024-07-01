A, B, C = gets.split.map!{|n| n.to_i}

if B >= A * C
    puts C
else
    puts B / A
end