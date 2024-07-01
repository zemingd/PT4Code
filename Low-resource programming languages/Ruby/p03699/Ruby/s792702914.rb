n = gets.to_i
ss = $stdin.read.split.map(&:to_i)

def find_min(ls)
  tmp = 101
  ls.each do |x|
    next if (x % 10).zero?
    tmp = x if x < tmp
  end
  tmp
end

sum = ss.inject(:+)
if (sum % 10).zero?
  minimum = find_min(ss)
  if minimum == 101
    puts 0
  else
    puts(sum - minimum)
  end
else
  puts sum
end