alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
s = gets.chomp.downcase.split("")
h = {}
for c in alphabet do
  h[c] = 0
end
for i in 0..(s.length-1) do
  if alphabet.include?(s[i])
    h[s[i]] = h[s[i]] + 1
  end
end

for c in alphabet do
  printf("%s : %d\n",c,h[c])
end
