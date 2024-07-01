n, m = gets.split.map(&:to_i)
s = []
ans = 0

board = []
m.times do |i|
  k, *s = gets.split.map(&:to_i)
  board << s
end

power = gets.split.map(&:to_i)
power.length.times do |i|
  board[i] << power[i]
end
#p board

# ture false走査
(2**n).times do |i|
  x = i.to_s(2).rjust(n, '0')
  count = 1
  set = []
  x.split('').each do |c|
    set << count if c == "1"
    count += 1
  end
  #p "set:#{set}"
  flag = 1
  board.each do |a|
    check = a[-1]
    if check != a[0..(a.length-2)].count{|i| set.include?(i)}%2
      flag = 0
      break
    end
  end
  ans += 1 if flag == 1 

end 

#p board
p ans