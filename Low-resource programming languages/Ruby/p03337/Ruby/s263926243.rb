N = gets.to_i
S = gets.chomp.split("")
max = 0

for i in 0..N-1
  kind = (S.slice(0..i) & S.slice(i+1..N-1)).length
  if max < kind then
    max = kind
  end
end

puts max