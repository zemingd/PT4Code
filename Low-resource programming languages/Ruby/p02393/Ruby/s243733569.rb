x, y, z = gets.split.map(&:to_i)
if x => y && y => z
printf(z y x)
else
if x => z && z => y
printf(y z x)
else
if y => x && x => z
printf(z x y)
else
if y => z && z => x
printf(x z y)
else
if z => x && x => y
printf(y x z)
else
if z => y && y => x
printf(x y z)
end
end
end
end
end
end