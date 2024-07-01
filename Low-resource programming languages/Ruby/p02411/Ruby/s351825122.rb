grand = Array.new
 
while true
    score = gets.split.map(&:to_i)
    break if score[0]==-1 && score[1]==-1 && score[2]==-1
    if score[0] + score[1] >= 80
        grand << "A"
    elsif score[0] + score[1] >= 65
        grand << "B"
    elsif score[0] + score[1] >= 50
        grand << "C"
    elsif score[0] + score[1] >= 30
        if score[2] >= 50
            grand << "C"
        else
            grand << "D"
        end
    else
        grand << "F"
    end
end
 
grand.each{|e|
    puts e
}