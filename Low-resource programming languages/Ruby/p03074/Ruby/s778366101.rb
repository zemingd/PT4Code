require 'thread'
n,k = gets.split.map(&:to_i)
s = gets.chomp.split('').map(&:to_i)
s.push (-1)
b = []
cur = s[0]
count_0 = 0
count_1 = 0
count_10 = 0
count = 0
sum = 0
max = 0
num_z = 0
q = Queue.new
0.upto(n) do |i|
  if s[i].zero?
    count_0 += 1
  elsif s[i] == 1
    count_1 += 1
  end
  count += 1
  if s[i] != cur
    if s[i].zero? || s[i-1] == 1
      sum += count_1
      count_10 += count_1
      count_1 = 0
      if num_z == k && s[i].zero?
        unless q.empty?
          sum -= q.pop
        end
      else
        num_z += 1
      end
      max = sum if max < sum
    else
      sum += count_0
      count_10 += count_0
      q.push(count_10)
      count_10 = 0
      count_0 = 0
    end
    cur = s[i]
  end
end
puts max
