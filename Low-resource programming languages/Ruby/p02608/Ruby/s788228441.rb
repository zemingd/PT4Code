n = gets.chomp.to_i

def xyz(ary, n)
  xy = ary[0] * ary[1]
  yz = ary[1] * ary[2]
  zx = ary[2] * ary[0]
  res = ary[0]**2 + ary[1]**2 + ary[2]**2 + xy + yz + zx

  res == n ? true : false
end

def xyz_function(k)
  x, y, z = 0
  cnt = 0
  return cnt if k < 3
  ary = [*1..k]
  ary_comb = ary.repeated_permutation(3).to_a
  ary_comb_d1 = ary_comb.delete_if{|ay| ay.sum > k}
  ary_comb_d2 = ary_comb_d1.delete_if{|ay| 
    ay[0]**2 + ay[1]**2 + ay[2]**2 > k
  }
  ary_comb_d2.each{|ary_f|
    if xyz(ary_f, k)
      cnt += 1
    end
  }

  cnt > 0 ? cnt : 0
end

1.upto(n) {|k|
  puts xyz_function(k)
}