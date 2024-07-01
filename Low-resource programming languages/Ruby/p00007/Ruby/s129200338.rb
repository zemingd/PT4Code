
debt = 100000
for i in 0...gets.chomp.to_i do
        debt *= 1.05
        debt = debt.to_i
        work = debt.to_s
        work = work[work.length - 3, work.length]
        if work != "000"
                debt = debt + 1000 - work.to_i
        end
end
puts debt

