loop {
m,f,r=gets.split(" ").map(&:to_i)
break if m==-1 && f==-1 && r==-1

grade="F"
if m == -1 or f == -1

elsif (m + f) >=80 
    grade= "A"
elsif (m + f) >=65
    grade= "B"
elsif (m + f)>=50
    grade="C"
elsif (m + f)>=30
    if r >= 50
        grade= "C"
    else
        grade= "D"
    end
end

puts grade


}






