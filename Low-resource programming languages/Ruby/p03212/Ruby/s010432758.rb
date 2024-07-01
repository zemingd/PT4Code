#! /usr/bin/env ruby

N = STDIN.read.to_i
SU = [357, 375, 537, 573, 735, 753]
NS = [3, 5, 7]


def sgs_fac(i, m)
  cnt = 0
  NS.repeated_permutation(i) {|arr| 
    j = arr.join('').to_i
    if j <= m && arr.uniq.length == 3
      cnt = cnt + 1
    end
  }
  return cnt
end

def sgs()
  l = N.to_s.length
  cnt = 0
  i = l
  while i > 0
    cnt = cnt + sgs_fac(i, N)
    i = i - 1
  end

  return cnt
end

puts sgs()
