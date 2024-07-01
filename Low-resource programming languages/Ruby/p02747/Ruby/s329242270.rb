S = gets.chomp

bool = true
arr = S.chars
arr.each do |ch|
    if !(ch == "h" || ch == "i")
        bool = false
        break
    end
end

cond = ( S.include?("hihi") && bool) || S == "hi"

puts cond ? 'Yes' : 'No'