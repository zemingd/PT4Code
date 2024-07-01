(X, Y, Z, K), As, Bs, Cs = readlines.map{|l| l.split.map(&:to_i)}

class Array
  def srt
    self.sort.reverse.take(K)
  end
end

def go(xs, ys)
  xs.srt.product(ys.srt).map{|x, y| x + y}.srt
end

puts go(go(As, Bs), Cs)