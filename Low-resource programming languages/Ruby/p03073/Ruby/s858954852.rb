s = gets.split('').map(&:to_i)
N = s.length

def first0check(s)
  sum = 0
  (N-1).times do |i|
    num = s[i]
    if i.odd? && num == 0
      sum += 1
    elsif i.odd? && num == 1
      next
    elsif i.even? && num == 0
      next
    elsif i.even? && num == 1
      sum += 1
    end
  end
  sum
end

def first1check(s)
  sum = 0
  (N-1).times do |i|
    num = s[i]
    if i.odd? && num == 0
      next
    elsif i.odd? && num == 1
      sum += 1
    elsif i.even? && num == 0
      sum += 1
    elsif i.even? && num == 1
      next
    end
  end
  sum
end

sum_1 = first0check(s)
sum_2 = first1check(s)

puts [sum_1,sum_2].min
