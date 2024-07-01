N = gets.strip.to_i
a = gets.strip.split('')

def chmax(a, b) a > b ? a : b end

def f(x, y)
  res = 0
  x.uniq.each do |c|
    res += 1 if y.include?(c)
  end
  res
end

res = 0
(N - 1).times do |i|
  res = chmax(f(a[0..i], a[i+1..-1]), res)  
end

puts res
