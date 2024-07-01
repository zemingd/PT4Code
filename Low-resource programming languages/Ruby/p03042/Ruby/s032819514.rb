s = gets.to_s
s1 = s[0..1]
s2 = s[2..3]

def yymmdetect(s)
    if s.to_i > 12
        return "YY"
    elsif s.to_i == 0
        return "YY"
    else
        return "MM"
    end
end

result = yymmdetect(s1) + yymmdetect(s2)
hantei = ""
if result == "MMMM"
    hantei = "AMBIGUOUS"
elsif result == "YYYY"
    hantei = "NA"
else
    hantei = result
end

puts hantei