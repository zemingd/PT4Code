N,L=gets.split.map(&:to_i)
sum = ((L..L+N-1).to_a).inject(&:+)
red = 1312312
ans = 0
((L..L+N-1).to_a).each do |e|
    if e.abs < red
        red = e.abs
        ans = sum - e
    end
end
puts ans