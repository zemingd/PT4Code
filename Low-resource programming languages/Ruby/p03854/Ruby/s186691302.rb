# T の末尾に dream dreamer erase eraser のいずれかを追加する。

s = gets.chomp
len = s.size
(len - 1).downto(0) do |j|
  if aaa = s[j..-1].match(/dreamer|dream|eraser|erase/)
    s[j, aaa.to_s.size] = ""
  end
end

puts s == "" ? "YES" : "NO"