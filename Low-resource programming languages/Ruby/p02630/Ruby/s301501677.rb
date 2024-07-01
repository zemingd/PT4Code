n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)

as.sort!

if as[0] == as[-1]
  q = gets.chomp.to_i
  a = as[0]
  q.times do
    b, c = gets.chomp.split(' ').map(&:to_i)
    if a == b
      puts c * n
      a = c
    else
      puts a * n
    end
  end
else
  q = gets.chomp.to_i
  q.times do
    b, c = gets.chomp.split(' ').map(&:to_i)
    start = as.bsearch_index { |a| a >= b }
    # p as
    # p start
    if start == nil
      puts as.sum
      next
    end
    (start...n).each do |index|
      if as[index] == b
        as[index] = c
      else
        break
      end
    end
    puts as.sum
    as.sort!
  end
end
