i = gets.to_i
j = gets.to_i
tas = i + j
hiku = i - j
kake = i * j
h = tas
if h < hiku then
    h = hiku
end
if h < kake then
    h = kake
end
print h