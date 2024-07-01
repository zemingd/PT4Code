require 'scanf'

n = gets.scanf("%d")[0]
count = 0
for w in 0..9
  for x in 0..9
    for y in 0..9
      for z in 0..9
        if (w + x + y + z == n)
          count += 1
        end
      end
    end
  end
end

puts count