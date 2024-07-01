n = gets.to_i

def f(x)
  sum = 0
  loop do
    q, r = x.divmod(10)
    sum += r
    break if q.zero?
    x = q
  end
  sum
end

puts n % f(n) == 0 ? 'Yes' : 'No'
