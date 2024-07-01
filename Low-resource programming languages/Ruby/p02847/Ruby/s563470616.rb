week = ['0','SAT','FRI','THU','WED','TUE','MON','SUN']

S = gets.chomp

week.each_with_index do |w, i|
    if S == w
        puts i
    end
end
