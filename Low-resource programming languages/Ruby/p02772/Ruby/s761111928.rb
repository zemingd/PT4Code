n = STDIN.gets.to_i
a = STDIN.gets.split.map(&:to_i)

flg = true
a.each do |i|
  if i.even?
    if i % 3 != 0 && i % 5 != 0
      flg = false
      break
    end
  end
end

puts flg ? 'APPROVED' : 'DENIED'
