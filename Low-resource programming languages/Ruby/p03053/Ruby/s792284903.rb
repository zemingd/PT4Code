def licount(li)
  cnt = 0
  li.each do |l|
    cnt += l.count('#')
  end
  cnt
end

h,w = gets.split(' ').map(&:to_i)

li = Array.new
h.times do
  li << gets.chomp.split('')
end

cnt = 0

if licount(li) == h*w
  puts cnt
else
  while true
    k = []
    li.each_with_index do |v,i|
      k << v.map.with_index { |e,f| e == '#' ? f : nil }.compact
    end
    k.each_with_index do |v,i|
      if v.size == 0
        next
      end
      v.each do |e|
        # up
        if i != 0
          li[i-1][e] = '#'
        end
        # down
        if i != h-1
          li[i+1][e] = '#'
        end
        # left
        if e != 0
          li[i][e-1] = '#'
        end
        # right
        if e != w-1
          li[i][e+1] = '#'
        end
      end
    end
    cnt += 1
    if licount(li) == h*w
      break
    end
  end
  puts cnt
end
