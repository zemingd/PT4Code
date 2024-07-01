_, m, k = gets.chomp.split(' ').map(&:to_i)
lack1 = gets.chomp.split(' ').map(&:to_i).inject([0]) { |acc, a| acc << acc.last + a }
lack2 = gets.chomp.split(' ').map(&:to_i).inject([0]) { |acc, a| acc << acc.last + a }
start1 = lack1.filter { |i| i <= k }.length - 1
start2 = lack2.filter { |i| i <= k - lack1[start1] }.length - 1
current_count = start1 + start2
max_count = start1 + start2
(start1 - 1).downto(0).each do |i|
  current_count -= 1
  ((start2 + 1)...m).each do |j|
    if lack1[i] + lack2[j] <= k
      current_count += 1
    else
      start2 = j - 1
      break
    end
  end
  max_count = [current_count, max_count].max
end
puts max_count
