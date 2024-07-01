xyzk, a, b, c = STDIN.read.lines.map { |line| line.split(/\s+/).map(&:to_i) }
k = xyzk[-1]

a.sort! { |x, y| y <=> x }
b.sort! { |x, y| y <=> x }
c.sort! { |x, y| y <=> x }

ret = []
a.size.times { |ai|
  b.size.times { |bi|
    c.size.times { |ci|
      if ((ai + 1) * (bi + 1) * (ci + 1) <= k)
        ret << (a[ai] + b[bi] + c[ci])
      else
        break
      end
    }
  }
}

ret.sort! { |x, y| y <=> x }
puts ret[0...k].join("\n")