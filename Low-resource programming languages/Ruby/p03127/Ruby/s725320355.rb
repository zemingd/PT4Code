def gcd(a,b)
  if a == b
    a
  elsif a < b
    gcd(a, b - a)
  else
    gcd(a - b, b)
  end
end

n = gets.to_i
ary = gets.split.map(&:to_i)

p ary.reduce { |a,b| gcd(a,b) }
