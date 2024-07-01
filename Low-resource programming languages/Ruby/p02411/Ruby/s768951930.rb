exams = []
exam = [0, 0, 0]
loop do
    exam = gets.split.map(&:to_i)
    break if exam[0] == -1 && exam[1] == -1 && exam[2] == -1
    exams << exam
end
exams.each do |exam|
    score = exam[0] + exam[1]
    case
    when exam[0] == -1 || exam[1] == -1
        puts "F"
    when score >= 80
        puts "A"
    when score >= 65
        puts "B"
    when score >=50
        puts "C"
    when score >= 30
        if exam[2] >= 50
            puts "C"
        else
            puts "D"
        end
    else
        puts "F"
    end
end
