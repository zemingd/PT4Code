while str = STDIN.gets
  n = str.split(" ")
  a = n[0].to_i
  b = n[1].to_i

    for h in 1..a do
      for w in 1..b do
        print "#"
      end
      print "\n"
    end
end
