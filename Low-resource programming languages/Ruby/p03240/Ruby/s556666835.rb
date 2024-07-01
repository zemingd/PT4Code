N = gets.chomp.to_i
x = Array.new(N)
y = Array.new(N)
h = Array.new(N)
N.times do |i|
  x[i],y[i],h[i] = gets.chomp.map(&:to_i)
end
MAX = 100;
(0..MAX).each do |posY|
  (0..MAX).each do |posX|
    int needH = -1;
    N.times do |i|
      if h[i] > 0
        tmp = h[i] + (posY - y[i]).abs + (posX - x[i]).abs
        if needH == -1
          needH = tmp;
        else 
          if needH != tmp
            needH = -2;
            break;
          end
        end
      end
    end
    if needH == -2 
      next
    end
    N.times do |i|
      if h[i] == 0
        dist = (posY - y[i]).abs + (posX - x[i]).abs
        if needH > dist
          needH = -2
          break
        end
      end
      if needH == -2 
        next;
      end

      puts posX + " " + posY + " " + needH
      return
  end
end