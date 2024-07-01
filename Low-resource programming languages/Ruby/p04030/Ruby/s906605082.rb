s = gets.split('')

v = []

s.each do |s|
    if s == "0"
        v.push("0")
    elsif s == "1"
        v.push("1")
    elsif s == "B"
        if v.any?
            v.pop
        else
            v.push("")
        end
    end
end

puts v.join