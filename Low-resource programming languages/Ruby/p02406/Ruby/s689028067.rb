def call(n)
  (1..n).each { |i| print " #{i}" if check_3(i) }
  puts
end

def check_3(n)
  return true if n % 3 == 0
  "#{n}".index('3')
end

call(gets.to_i)