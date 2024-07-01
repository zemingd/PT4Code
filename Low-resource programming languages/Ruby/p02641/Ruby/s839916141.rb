x, n = gets.split(' ').map(&:to_i)
p = gets.chomp.split(' ').map(&:to_i)

q = p.map { |n| (n - x) }
ans = 0
(0..100).each { |i|
        if q.include?(i)
                if q.include?(-1 * i)
                        next
                else
                        ans = x - i
                        break
                end
        elsif q.include?(-1 * i)
                ans = x + i
                break
        else
                ans = x - i
                break
        end
}

puts ans