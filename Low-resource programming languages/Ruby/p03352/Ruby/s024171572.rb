x = gets.to_i
a = Array.new

(2..9).each do |i|
  (2..31).each do |j|
    if j ** i <= x
      a.push(j ** i)
    end
  end
end

a.push(1)


p a.max
