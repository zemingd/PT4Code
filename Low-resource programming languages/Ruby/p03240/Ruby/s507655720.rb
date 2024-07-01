n    = gets.to_i
info = []

n.times do
  x, y, h = gets.split.map(&:to_i)
  if h > 0
    info << [x, y, h]
  end
end

n = info.size
if n == 1
  puts [info[0][0], info[0][1], info[0][2]].join(" ")
else
  for prex in 0 .. 100
    for prey in 0 .. 100
      preh = info[0][2] + (prex - info[0][0]).abs + (prey - info[0][1]).abs
      for i in 1 .. n - 1
        if preh - (prex - info[i][0]).abs - (prey - info[i][1]).abs != info[i][2]
          break
        elsif i == n - 1
          puts [prex, prey, preh].join(" ")
          exit
        end
      end
    end
  end
end
