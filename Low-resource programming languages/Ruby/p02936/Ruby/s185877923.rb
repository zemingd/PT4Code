def ki(a, x, ko, ans)
    ans[a] += x
    ko[a].each do |e|
        ki(e, x, ko, ans)
    end
end

N, Q = gets.split.map(&:to_i)
ko = Array.new(N+1).map{[]}
ans = Array.new(N+1, 0)

(N-1).times do
    a, b = gets.split.map(&:to_i)
    ko[a] << b
end

Q.times do
    q, x = gets.split.map(&:to_i)
    ki(q, x, ko, ans)
end

puts ans.slice(1..ans.length-1).join(' ')