  iN=$stdin.gets.to_i
  h={}
  iN.times do
    *bfr,v=$stdin.gets.split.map(&:to_i)
    h[bfr]=0 unless h.has_key?(bfr)
    h[bfr]+=v
  end
  1.upto(4) do |b|
    1.upto(3) do |f|
      1.upto(10) do |r|
        print " "
        print h.has_key?([b,f,r]) ? h[[b,f,r]] : 0
      end
      print "\n"
    end
    print "#"*20 + "\n" if b<4
  end
