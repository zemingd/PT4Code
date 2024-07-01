n, m = gets.split.map(&:to_i)
jobs = n.times.map{|i|
    gets.split.map(&:to_i)
}.sort_by{|it| it[1]}

income_of_day = [0] * m
free_day_count = income_of_day.size
while !jobs.empty? && free_day_count > 0
    j = jobs.pop
    index = m - j[0]
    while index >= 0 && income_of_day[index] != 0
        index -= 1
    end
    if index != -1
        free_day_count -= 1
        income_of_day[index] = j[1]
    end
end

puts income_of_day.inject(:+)
