s = gets
puts s.gsub(/(.) \1/){ $1 } && s.gsub(/(.) \1/){ $1 } ? "YES" : "No"