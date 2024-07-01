s = gets.chomp

cs = %w(0 1).cycle
cnt1 = s.chars.count { |c, idx| c != cs.next }
cs = %w(1 0).cycle
cnt2 = s.chars.count { |c, idx| c != cs.next }

puts [cnt1, cnt2].min
