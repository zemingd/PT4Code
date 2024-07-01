while line = gets
  m, f, r = line.split(/\s+/).map(&:to_i)
  t = m + f

  exit if m == -1 && f == -1 && r == -1 

  r = if m == -1 || f == -1
    "F"
  else
    case t
    when 80..100
      "A"
    when 65..79
      "B"
    when 50..64
      "C"
    when 30..49
      r >= 50 ? "C" : "D"
    else
      "F"
    end
  end

  puts r
end
