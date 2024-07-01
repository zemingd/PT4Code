def checkContinuous(line, memo, count, w)
    1.upto(w-1) do |i|
        if line[i] === "#" && line[i-1] === "#" then
            memo[count][i] = 1
            memo[count][i-1] = 1
        end
    end
end

def main(h, w)
    s = []
    memo = Array.new(h).map{Array.new(w,0)}
    count = 0
    h.times do
        line = gets.chomp.split("")
        s << line
        checkContinuous(line, memo, count, w)
        count += 1
    end
    s = s.transpose
    memo = memo.transpose
    count = 0
    s.each do |arr|
        checkContinuous(arr, memo, count, w)
        arr.each_with_index do |item, index|
            if item === "#" && memo[count][index] === 0 then
                print "No"
                exit
            end
        end 
        count += 1
    end
    print "Yes"
end

h, w = gets.chomp.split(" ").map(&:to_i)
if h === 1 && w === 1 then
    el = gets.chomp
    if el === "#" then
        puts "Yes"
    else
        puts "No"
    end
    exit
end
main(h, w)