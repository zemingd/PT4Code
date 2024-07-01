def f(x)
    x.to_s.length
end

def max(x,y)
    x>y ? x:y
end

n=gets.to_i
ans = f(n)
(2..Math.sqrt(n).ceil).each do |a|
    next if n % a != 0
    b = n/a
    t = max(f(a),f(b))
    ans = t if t < ans
end
puts ans
