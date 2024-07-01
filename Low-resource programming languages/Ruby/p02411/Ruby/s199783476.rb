m,f,r = gets.split.map &:to_i
grade = ""
score = 0

while m!=-1 || f!=-1 || r!= -1 do
    score = m+f
    if(m==-1 || f ==-1)
        grade = "F";
    elsif(score >= 80)
        grade = "A";
    elsif(score < 80 && score >= 65)
        grade = "B";
    elsif(score < 65 && score >= 50)
        grade = "C";
    elsif(score < 50 && score >= 30)
        if(r>=50)
            grade = "C";
        else
            grade = "D";
        end
    else
        grade = "F";
    end
    puts grade
    m,f,r = gets.split.map &:to_i
end