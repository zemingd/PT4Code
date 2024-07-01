require 'pp'

N,A,B,C = readline.chomp.split.map(&:to_i)

L = Array.new(N)
N.times {|i| L[i] = readline.chomp.to_i }
L.sort!

def mp_min( ls )
  min = 10000000
  n = ls.size
  (0..(n-1)).each do |c|
    ((c+1)..(n-1)).each do |b|
      ((b+1)..(n-1)).each do |a|
        mp = (ls[a]-A).abs + (ls[b]-B).abs + (ls[c]-C).abs
        min = mp if mp < min
      end
    end
  end
  min
end

def min_merge(l, num_merge, min)
  n = l.size
  (0..(n-1)).each do |i1|
    ((i1+1)..(n-1)).each do |i2|
      l2 = l.dup
      l2[i1] = l[i1] + l[i2]
      l2[i2] = nil
      l2.compact!.sort!
      #pp min,l2
      next if l2.map {|x|(x-A).abs}.min+l2.map {|x|(x-B).abs}.min+l2.map {|x|(x-C).abs}.min >= min
      lmin = mp_min(l2) + num_merge*10
      #pp lmin
      min = lmin if lmin < min
      if l2.size > 3
        rmin = min_merge(l2, num_merge+1, min)
        min = rmin if rmin < min
      end
    end
  end
  min
end

min = mp_min(L)
puts min_merge(L,1,min)
