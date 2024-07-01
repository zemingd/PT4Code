n, q = gets.split.map &:to_i
s = gets.chomp
# s = 'CACACACA'
begin_count = 0
begin_count_arr = Array.new(n+10, 0)

0.upto(n-2) do |i|
  if (s[i] + s[i+1]) == 'AC'
    begin_count += 1
  end
  begin_count_arr[i] = begin_count
end
q.times do
  l, r = gets.split.map(&:to_i)
  # p [l,r]
  # p [begin_count_arr[r], begin_count_arr[l]]
  # p [begin_count_arr[r-2], begin_count_arr[l-2]]
  # p [begin_count_arr[r-1], begin_count_arr[l-1]]
  # p [begin_count_arr[r+1], begin_count_arr[l+1]]
  # p [begin_count_arr[r+2], begin_count_arr[l+2]]
  p begin_count_arr[r-2] - begin_count_arr[l-2]
end

=begin
8 3
ACACTACG
3 7
2 3
1 8
=====
2
0
3
=end
