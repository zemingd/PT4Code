s = gets.chomp
s2 = s.tr("B", " ").tr("D-F", " ").tr("H-S", " ").tr("U-Z", " ").split(" ").max

if s2.nil?
  p 0
else
  s2.size
end
