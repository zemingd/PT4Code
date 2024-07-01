s=gets.split.map &:to_i
puts s.uniq.size!=3 ? "No":s.sort==s ? "Yes":"No";