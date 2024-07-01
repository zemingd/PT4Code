n,d = gets.split.map(&:to_i)

x = []

count = 0
n.times do |i|
  x[i] = gets.split.map(&:to_i)
end

sum = 0

(n-1).times do |ni|
  (n-ni-1).times do |si|
    d.times do |di|
      sum += (x[ni][di] - x[si+1+ni][di])**2

      if (d-1) == di
        if Math.sqrt(sum).to_i**2 == sum
          count += 1
        end
      end
    end
    sum = 0
  end
end

puts count
