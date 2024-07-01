N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

def main
  if A.all? { |i| i == 0 }
    print "Yes\n"
    return
  end
  
  h = {}
  A.each do |a|
    h[a] ||= 0
    h[a] += 1
  end
  
  if h.size == 2
    a = h.sort_by { |c, cnt| c }
    c1, cnt1 = a[0]
    c2, cnt2 = a[1]
    if (c1 == 0) && (cnt1 * 3 == N)
      print "Yes\n"
      return
    else
      print "No\n"
      return
    end
  end
  
  if h.size == 3
    a = h.sort_by { |c, cnt| c }
    c1, cnt1 = a[0]
    c2, cnt2 = a[1]
    c3, cnt3 = a[2]
    if ((c1 ^ c2 ^ c3) == 0) && (cnt1 * 3 == N) && (cnt2 * 3 == N) && (cnt3 * 3 == N)
      print "Yes\n"
      return
    else
      print "No\n"
      return
    end
  end
  
  print "No\n"
end

main