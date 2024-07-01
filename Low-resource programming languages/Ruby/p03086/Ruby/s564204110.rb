s = gets.chomp
s2 = s.tr("B", " ").tr("D-F", " ").tr("H-S", " ").tr("U-Z", " ").split(" ").max

s2.empty? ? p 0 : p s2.size
