$stdin.read.split(?\n).map(&:chars).tap do |s, f|
  puts s.sort.join < f.sort.reverse.join ? "Yes" : "No"
end