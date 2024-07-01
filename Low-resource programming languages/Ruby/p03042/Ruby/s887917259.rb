S=gets.chomp
a=S[0..1].to_i
b=S[2..3].to_i
if (1 <= a && a <= 12) && (1 <= b && b <= 12)
    puts 'AMBIGUOUS'
elsif (1 <= a && a <= 12) && (b > 12 || b == 0)
    puts 'MMYY'
elsif (a > 12 || a == 0) && (1 <= b && b <= 12)
    puts 'YYMM'
else
    puts 'NA'
end
