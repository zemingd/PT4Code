a, b = $stdin.readline.chomp.split(' ').map(&:to_i)

gcd = a.gcd(b)

cds = []

(2..gcd).each do |i|
  if a.remainder(i).zero? && b.remainder(i).zero?
    cds.push(i)
  end
end

answers = [1]
rejected = []
cds.each do |e|
  cds.each do |f|
    next if e == f

    if e.gcd(f) == 1
      answers.push(e)
    else
      rejected.push([e, f].max)
    end
  end
end

puts (answers.uniq - rejected.uniq).length
