gets
S=gets.split.map(&:to_i)
puts S.size==S.uniq.size ? "YES" : "NO"