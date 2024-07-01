dests = gets.split("")
k = gets

i1 = 0

dests.each do |dest|
  i1 += dest.to_i ** 500_000_000_000_000
  if i1 >= k.to_i
    puts dest
    return
  end
end