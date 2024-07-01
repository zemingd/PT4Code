require 'matrix'

n, y = *ARGF.gets.split(/\s+/).collect{|i| i.strip.to_i}

a = Matrix[
      [ 5000, 1000 ],
      [    1,    1 ]
    ]

max_number_of_yukichi = [n, y / 10_000].min

solved = false

(max_number_of_yukichi..0).step(-1).each do |number_of_yukichi|
  balance = y - number_of_yukichi * 10_000
  rest_of_number_of_bills = n - number_of_yukichi

  b = [balance, rest_of_number_of_bills]
  x = a.lup.solve(b)

  if x.map(&:to_f) == x.map(&:to_i) and x.map(&:to_i).all?{|i| i >= 0}
   puts [number_of_yukichi, x.map(&:to_i).to_a].flatten.join(' ')
    solved = true
    break
  end
end

unless solved
  puts "-1 -1 -1"
end
