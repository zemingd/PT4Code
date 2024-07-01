n,d = gets.split.map(&:to_i)

x = []

count = 0
n.times do |i|
  x[i] = gets.split.map(&:to_i)
end

sum = 0
n.times do |ni|
  if (n-1) != ni
    d.times do |di|
      sum += (x[ni][di] - x[ni+1][di])**2

      if (d-1) == di
        if Math.sqrt(sum).to_i**2 == sum
          count += 1
        end
      end
    end
  else
    d.times do |di|
      sum += (x[ni][di] - x[0][di])**2

      if (d-1) == di
        if Math.sqrt(sum).to_i**2 == sum
          count += 1
        end
      end
    end
  end
  sum = 0
end

puts count
