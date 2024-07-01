n = gets.chomp.to_i
#a,b = gets.chomp.split().map(&:to_i)


six = []
yen = 6
while yen <= 100000
  six.push yen
  yen *= 6
end

nine = []
yen = 9
while yen <= 100000
  nine.push yen
  yen *= 9
end

six.sort!
six.reverse!
nine.sort!
nine.reverse!

sixsize = six.size
ninesize = nine.size

ans = Float::INFINITY
q = [[n, 0, 0, 0]]
until q.empty?
  n, sixc, ninec, count = q.pop
  # p [n, sixc, ninec, count]
  if n < 6
    ans = [ans, count + n].min
    next
  end
  while sixc < sixsize && six[sixc] > n
    sixc += 1
  end
  while  ninec < ninesize && nine[ninec] > n
    ninec += 1
  end

  q.push [n - six[sixc], sixc, ninec, count + 1] if sixc < sixsize
  q.push [n - nine[ninec], sixc, ninec, count + 1] if ninec < ninesize
end

puts ans
