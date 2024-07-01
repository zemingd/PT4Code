N, M = gets.chop.split.map(&:to_i)
H = gets.chop.split(' ').map(&:to_i)
A = M.times.map { gets.chop.split(' ').map(&:to_i) }

ans = Array.new(N, nil)

A.each do |i|
  x = i[0] - 1
  y = i[1] - 1

  if H[x] == H[y]
    ans[x] = false
    ans[y] = false
  elsif H[x] > H[y]
    ans[x] = true if ans[x].nil?
    ans[y] = false
  else
    ans[y] = true if ans[y].nil?
    ans[x] = false
  end
end

cnt = ans.count{ |x| x.nil? || x == true }

puts cnt
