l, r = gets.split.map(&:to_i)

ans = 2018
zero_divided = false

l.upto(r - 1) do |i|
  if zero_divided
    ans = 0
    break
  end

  (i + 1).upto(r) do |j|
    imod = i % 2019
    jmod = j % 2019

    if imod == 0 || jmod == 0
      zero_divided = true
      break
    end

    ans = imod * jmod if imod * jmod <= ans
  end
end

puts ans
