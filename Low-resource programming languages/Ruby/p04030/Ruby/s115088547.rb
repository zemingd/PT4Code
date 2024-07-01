s = gets.chomp

ans = []

s.chars.each do |r|
    if r == "B"
        ans.delete_at(-1)
        next
    end

    ans.push(r)
end

puts ans.join()