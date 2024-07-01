a,b,c = gets.split.map(&:to_i)

i = 1

cand = []

while true do
  toc = a * i % b
  if cand.include? toc
    puts 'NO'
    exit 0
  end

  if toc == c
    puts 'YES'
    exit 0
  else
    cand << toc
  end
  i += 1
end
