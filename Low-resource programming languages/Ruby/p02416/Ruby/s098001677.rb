while gets
  if $_ == "0\n"
    break
  end

  puts $_.chomp.split("").map(&:to_i).sum
end

