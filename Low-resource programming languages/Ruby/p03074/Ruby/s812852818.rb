n, k = gets.split.map &:to_i

arr = gets[0..-2].chars.map{|c| c=="1"}
s = []
s[0] = arr[0] ? 1 : -1

arr[1..-1].each{|a|
  if a
    if s[-1] > 0
      s[-1] += 1
    else
      s << 1
    end
  else
    if s[-1] < 0
      s[-1] -= 1
    else
      s << -1
    end
  end
}


tmp = 0
max = 0

# p s
s.each_with_index do |v, i|
  if v > 0
    tmp += v
    max = [max, tmp].max
    # print "Add #{v}"
  else
    prev = i - k * 2

    # print "Add #{v}"
    if prev >= 0
      # print "M#{s[prev]}"
      tmp -= s[prev].abs
    end
    if prev - 1 >= 0
      # print "M#{s[prev-1]}"
      tmp -= s[prev-1].abs
    end
    tmp += v.abs
  end
  # puts "\t--- TMP #{tmp}"
end
puts max
