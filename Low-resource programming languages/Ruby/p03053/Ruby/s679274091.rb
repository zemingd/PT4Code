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
g = 0

if licount(li) == h*w
  puts cnt
else
  while true
    t = Marshal.dump(li)
    lit = Marshal.load(t)
    li.each_with_index do |v,i|
      if li[i].count('#') == w
        if i == 0
          if li[i+1].count('#') == w
            next
          end
        elsif i == h-1
          if li[i-1].count('#') == w
            next
          end
        else
          if li[i+1].count('#') == w and li[i-1].count('#') == w
            next
          end
        end
      end
      k = v.map.with_index { |e,f| e == '#' ? f : nil }.compact
      if k.size == 0
        next
      end
      k.each do |u|
        # up
        if i != 0
          lit[i-1][u] = '#'
        end
        # down
        if i != h-1
          lit[i+1][u] = '#'
        end
        # left
        if u != 0
          lit[i][u-1] = '#'
        end
        # right
        if u != w-1
          lit[i][u+1] = '#'
        end
        g += 1
      end
    end
    t = Marshal.dump(lit)
    li = Marshal.load(t)
    cnt += 1
    if licount(li) == h*w
      break
    end
  end
  puts cnt
end
puts g
