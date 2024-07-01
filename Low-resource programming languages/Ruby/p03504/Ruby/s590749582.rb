N, C = gets.split.map(&:to_i)
progs = []
N.times do
  r = gets.split.map(&:to_i)
  progs << [r[0]*2, r[1]*2, r[2]]
end

progs.sort!

recorders = []

progs.each do |s, t, c|
  best_index = nil
  best_diff = 1e100
  recorders.each_with_index do |r, i|
    rt, rc = *r
    if c != rc
      rt += 1
    end
    if rt <= s
      diff = s - rt
      if best_diff > diff
        best_diff = diff
        best_index = i
      end
    end
  end

  if !best_index
    best_index = recorders.size
    recorders << [0, 0]
  end

  recorders[best_index] = [t, c]
end

p recorders.size
