S = gets.chomp

bool = true
S.scan(/.{1,2}/).each do |ch|
    if ch != "hi"
        bool = false
        break
    end
end

puts bool ? 'Yes' : 'No'