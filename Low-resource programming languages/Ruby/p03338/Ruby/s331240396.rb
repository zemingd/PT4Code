n = gets.to_i
s = gets.split("")
a = Array.new(n-1, 0)
for i in 0..(n-2) do
  s1 = s[0..i]
  s2 = s[(i+1)..(n-1)]
  for x in "a".."z" do
    if s1.include?(x) && s2.include?(x)
      a[i] += 1
    end
  end
end

p a.max

