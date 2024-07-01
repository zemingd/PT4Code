s = gets
puts s.sub!(/(.) \1/){ $1 } && s.sub!(/(.) \1/){ $1 } ? "YES" : "NO"