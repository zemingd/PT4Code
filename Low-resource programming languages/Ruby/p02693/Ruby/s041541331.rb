k = readline.to_i
a, b = readline.split(' ').map(&:to_i)

r = 'NG'

(a..b).each do |n|
  if (n % k).zero?
    r = 'OK'
    break
  end
end

puts r
