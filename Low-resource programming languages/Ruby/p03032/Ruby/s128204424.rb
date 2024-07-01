def cin; gets.split.map(&:to_i) end

# exit if $0 != __FILE__

# n, *x = cin
# s = gets.chomp

# puts n

n, k = cin
vs = cin

max = -10**18
([n, k].min + 1).times do |deq|
  enq = k - deq
  (deq + 1).times do |ld|
    rd = deq - ld
    # p "#{ld}-#{rd} #{enq}"
    ar = ld == 0 ? [] : vs[0..(ld-1)]
    ar += rd == 0 ? [] : vs[(n-rd)..(n-1)]

    ar.sort!
    # p ar
    enq.times do
      break if ar.length == 0
      break if ar.first >= 0
      ar.shift
    end

    sc = ar.inject(:+) || 0
    max = sc if sc > max
  end
end

p max
