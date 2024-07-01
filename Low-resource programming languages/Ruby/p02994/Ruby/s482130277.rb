n, l = gets.split.map(&:to_i)

all = n*(n + 1)/ 2 + n*l - n
eaten = case l
  when 0..100 then l
  when (-100)..(1-n) then l+n-1
  else 0
  end

puts all - eaten
