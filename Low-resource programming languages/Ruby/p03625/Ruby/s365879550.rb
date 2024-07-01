gets
As = gets.split.map(&:to_i).sort.reverse

node = nil

As.uniq.each do |n|
  i = As.index(n)
  j = 1

  while As[i + j] == n do
    j += 1
  end

  if node.nil?
    if j >= 4
      puts n * n
      exit
    end

    if j >= 2
      node = n
    end

    next
  end

  if j >= 2
    puts node * n
    exit
  end
end

puts 0
