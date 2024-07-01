ss = gets.chomp
t = gets.chomp
s = nil
ok = false
(ss.length - t.length).downto(0) do |i|
  ok = true
  for j in 0...t.length do
    if ss[i + j] != t[j] && ss[i + j] != "?"
      ok = false
      break
    end
  end
  if ok
    s = ss.dup
    s[i, t.length] = t
    s.tr!("?", "a")
    break
  end
end
puts ok ? s : "UNRESTORABLE"
