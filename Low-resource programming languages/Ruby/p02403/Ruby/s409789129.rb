  ar=$stdin.read.split("\n")
  (ar.size-1).times do |n|
    h,w=ar[n].split.map(&:to_i)
    h.times do
      print "#"*w + "\n"
    end
    print "\n"
  end
