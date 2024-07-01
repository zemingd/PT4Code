s = gets.chomp

x = s.split("")
n = x.length

if x[0..n] == x[0..n].reverse
    if (x[0...((n - 1) / 2)] == x[0...((n - 1) / 2)].reverse) && (x[((n + 3) / 2) - 1...n] == x[((n + 3) / 2) - 1...n].reverse)
    puts 'Yes'
    else put 'No'
    end
else puts 'No'
end