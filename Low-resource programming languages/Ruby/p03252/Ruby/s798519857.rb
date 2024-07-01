# frozen_string_literal: true

s = gets.chomp.split("")
t = gets.chomp.split("")

duplicated = s.select.with_index {|c, i| c == t[i] }
rejected_s = s.reject.with_index {|c, i| c == t[i] }
rejected_t = t.reject.with_index {|c, i| c == s[i] }

answer = duplicated.any? {|c| rejected_s.include?(c) || rejected_t.include?(c) }

puts answer ? "No" : "Yes"
