N = gets.to_i


def f(n)
  mAX = Math.sqrt(n).floor + 1
  p = []
  for x in 1..mAX
    for y in x..mAX
      for z in y..mAX
        if x**2 + y**2 + z**2 + x*y + y*z + z*x == n
          p.push([x, y, z].permutation.to_a)
        end
      end
    end
  end
  return p.flatten(1).uniq.length
end


for n in 1..N+1
  puts f(n)
end
