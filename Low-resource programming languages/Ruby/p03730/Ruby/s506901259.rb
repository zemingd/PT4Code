a, b, c = gets.chomp.split(' ').map(&:to_i)

ans = false
1.upto(b-1) do |i|
    if (a*i) % b == c
        ans = true
        break
    end
end

puts(ans ? "YES" : "NO")