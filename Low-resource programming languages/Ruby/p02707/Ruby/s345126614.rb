n = gets.chomp.split(' ').map(&:to_i)[0]
as = gets.chomp.split(' ').map(&:to_i)
ans = Array.new(n, 0)
as.each { |a| ans[a - 1] = ans[a - 1] + 1 }
ans.each { |a| puts(a) }