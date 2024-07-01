ans = []
for i in 0...3
    n = gets.chomp.split("")
    ans.push(n[i])
end
print(ans.join())