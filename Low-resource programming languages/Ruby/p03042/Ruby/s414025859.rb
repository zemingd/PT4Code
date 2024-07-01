s=gets.chomp
t=s[2..3].to_i
s=s[0..1].to_i
if 0<t and t<=12
    if 0<s and s<=12
        puts "AMBIGUOUS"
    elsif s==0
        puts "YYMM"
    else
        puts "YYMM"
    end
elsif t==0
    if 0<s and s<=12
        puts "MMYY"
    elsif s==0
        puts "NA"
    else
        puts "NA"
    end
else
    if 0<s and s<=12
        puts "MMYY"
    elsif s==0
        puts "NA"
    else
        puts "NA"
    end
end

