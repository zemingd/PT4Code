require 'pp'
W, H = gets.split.map(&:to_i)
c = []

H.times do
  c << gets.chomp.chars
end

# puts c.map{|x| x.map{|xx| format('%s ', xx.to_s) }.join }.join("\n")

stack1 = [] # [h,w]
stack2 = []

H.times do |h|
  W.times do |w|
    if c[h][w] == '#'
      stack1 << [h,w]
    end
  end
end

cnt = 0
loop do
  until stack1.empty?
    s = stack1.pop
    h, w = s[0], s[1]
    [
      [h+1, w],
      [h-1, w],
      [h, w+1],
      [h, w-1]
    ].select{|(hh,ww)| 0 <= hh && hh < H && 0 <= ww && ww < W }.each do |h,w|
      if c[h][w] == '.'
        stack2 << [h,w]
        c[h][w] = '*'
      end
    end
  end

  if stack2.empty?
    break
  else
    cnt += 1
  end


  until stack2.empty?
    s = stack2.pop
    h, w = s[0], s[1]
    [
      [h+1, w],
      [h-1, w],
      [h, w+1],
      [h, w-1]
    ].select{|(hh,ww)| 0 <= hh && hh < H && 0 <= ww && ww < W }.each do |h,w|
      if c[h][w] == '.'
        stack1 << [h,w]
        c[h][w] = '*'
      end
    end
  end

  if stack1.empty?
    break
  else
    cnt += 1
  end
end

p cnt


# puts c.map{|x| x.map{|xx| format('%s ', xx.to_s) }.join }.join("\n")






