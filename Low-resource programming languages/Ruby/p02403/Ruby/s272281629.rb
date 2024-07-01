while true
  h,w= gets.split(' ').map(&:to_f)
  break if (h==0&&w==0)
  for m in 1..h
    for n in 1..w
      print '#'
    end
    puts ''
  end
  puts ''
end