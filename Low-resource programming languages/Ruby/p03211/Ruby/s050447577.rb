def main
  s = gets.chomp

  min = 1000000000
  0.upto(s.length-3) do |i|
    ps = s[i, 3]
    # puts ps

    part = ps.to_i

    abs_part = (part - 753).abs

    if abs_part < min
      min = abs_part
    end
  end

  puts min
end

if __FILE__ == $0
  main
end
