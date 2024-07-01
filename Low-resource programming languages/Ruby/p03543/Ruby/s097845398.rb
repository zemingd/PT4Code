n = gets.chomp.split("")
count = 0
n.each_cons (3) do |i|
    ans = i.uniq
    if ans.size == 1
        count += 1
    end
end
puts count >= 1 ? "Yes" : "No"


