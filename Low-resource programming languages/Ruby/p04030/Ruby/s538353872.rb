s = gets.chomp.split("")
ans = []
s.each do |x|
    if x == "B"
        ans.delete_at(-1) if ans[-1]
    else
        ans << x
    end
end

puts ans.join