blocks = gets.chomp.split().map(&:to_i)

arrive = []
steps = 0
for i in blocks
    if i == steps+1
       arrive.push(i)
       steps += 1
    end
end

if steps == 0
   puts -1
else
   puts(n-steps)
end