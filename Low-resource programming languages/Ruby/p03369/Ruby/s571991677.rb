chumon = gets
kazu = 0
for i in 0..2
  if chumon[i] ==  "o"
    kazu = kazu + 1
  end
  print i
  print chumon[i]
end

nedan = 700 + 100 * kazu
print(nedan)
print("\n")

