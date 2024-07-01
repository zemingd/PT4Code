def digits(x)
    x.to_s.length
end

n = gets.to_i
ans = digits(n)
(2..Math.sqrt(n).ceil).each do |a|
    next if n % a != 0
    b = n/a
    t = [digits(a),digits(b)].max
    ans = t if t < ans
end
puts ans