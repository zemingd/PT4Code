N = gets.to_i
x, y, h = N.times.map{gets.split.map(&:to_i)}.transpose
loops = 1
for i in 0..100
  for j in 0..100
    wr = 0
    id = 0
    for k in 0..(N-1)
      if h[i] != 0
        id = k
        break
      end
    end
    hei = (x[id] - i).abs + (y[id] - j).abs + h[id]
    for k in 0..(N-1)
      if k != id
        if h[k] == 0
          if hei - (x[k] - i).abs - (y[k] - j).abs > 0
            wr += 1
            break
          end
        else
          if (x[k] - i).abs + (y[k] - j).abs + h[k] != hei
            wr += 1
            break
          end
        end
      end
    end
    if wr == 0
      puts "#{i} #{j} #{hei}"
      loops = 0
      break
    end
  end
  if loops == 0
    break
  end
end