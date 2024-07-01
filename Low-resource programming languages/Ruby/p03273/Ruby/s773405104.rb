def checkRow(x)
    x.each do |a|
        if a.length == a.count{|b|b=='.'} then
            return true
        end
    end
    false
end
def checkCol(x)
    x.transpose.each do |a|
        if a.length == a.count{|b|b=='.'} then
            return true
        end
    end
    false
end
def check(x)
    checkRow(x) || checkCol(x)
end
H,W = gets.split.map(&:to_i)
x = Array.new(H).map{Array.new(W)}
H.times{|i| x[i] = gets.chomp.split('')}
while check(x) do
    if checkRow(x) then
        y = []
        x.each do |a|
            y.push a if a.length != a.count{|b|b=='.'}
        end
        x = y
    end
    if checkCol(x) then
        y = []
        x.transpose.each do |a|
            y.push a if a.length != a.count{|b|b=='.'}
        end
        x = y.transpose
    end
end

x.each{|a| puts a.join('')}