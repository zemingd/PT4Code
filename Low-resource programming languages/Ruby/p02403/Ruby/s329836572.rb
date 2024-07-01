while line = gets
  w, h = line.split.map(&:to_i)
  if w == 0 && h == 0 then break end
  h.times do
    w.times
      print "#"
    end
    puts
  end
end