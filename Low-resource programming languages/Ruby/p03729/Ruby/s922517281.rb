s = gets
puts s.scan(/(.) \1/).size == 2 ? "YES" : "NO"