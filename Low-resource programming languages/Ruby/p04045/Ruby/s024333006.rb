n,k = gets.split.map(&:to_i)
d = gets.chomp.split(' ').map(&:to_i)

prev_ans = []
[n].join.chars.map(&:to_i).map do |n|
  if d.all? {|d|d != n }
     prev_ans << n
  else
    while d.any? {|d|d == n } do
      n += 1
    end
    prev_ans << n
  end
end

prev_ans.unshift(1) if prev_ans.first == 10

ans = []
prev_ans.map do |n|
  n == 10 ? ans << 0 : ans << n 
end

puts ans.join