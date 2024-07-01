lines = []
marks = []
i = 0
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end
list = lines[0] + lines[1] + lines[2]

while i < lines[3][0]
    item = lines[4+i][0]
    marks.concat(list.each_index.select{|t| list[i] == item})
    i = i + 1
end

def isBingo(marks)
    if marks.include?(0) && marks.include?(1) && marks.include?(2) then
        return true
    elsif marks.include?(0) && marks.include?(3) && marks.include?(6) then
        return true
    elsif marks.include?(0) && marks.include?(4) && marks.include?(8) then
        return true
    elsif marks.include?(1) && marks.include?(4) && marks.include?(7) then
        return true
    elsif marks.include?(2) && marks.include?(4) && marks.include?(6) then
        return true
    elsif marks.include?(3) && marks.include?(4) && marks.include?(5) then
        return true
    elsif marks.include?(6) && marks.include?(7) && marks.include?(8) then
        return true
    else
        return false
    end
end

p isBingo(marks)

