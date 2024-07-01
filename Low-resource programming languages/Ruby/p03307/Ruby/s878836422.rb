n = gets().to_i

(1..100000000).each do |m|
  if (n * m).even?
    puts n * m
    break
  end
end