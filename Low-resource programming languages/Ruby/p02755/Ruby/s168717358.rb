a, b = gets.split(' ').map(&:to_i)

ta = (a / 0.08).to_i
tb = (b / 0.1).to_i

if ta == tb
  puts ta
else
  tbb = tb + 1
  result = -1

  while (tbb * 0.1).to_i == b && result == -1
    if ta == tbb
      result = tbb
      break
    end

    taa = ta + 1
    while (taa * 0.08).to_i == a
      if taa == tbb
        result = taa
        break
      end
      taa += 1
    end

    tbb += 1
  end

  puts result
end
