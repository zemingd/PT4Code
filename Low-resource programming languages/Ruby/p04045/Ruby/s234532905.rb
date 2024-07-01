n,k = gets.split.map(&:to_i)
d = gets.split('').map(&:to_i)

ans = []
[n].join.chars.reverse.map(&:to_i).map do |n|
  if d.all? {|d|d != n }
     ans << n
  else
    while d.any? {|d|d == n } do
      n += 1
    end
    ans << n
  end
end

puts ans.reverse.join