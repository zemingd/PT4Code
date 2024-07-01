A, B, C, D = gets.split("").map(&:to_i)

def plus_minus(candidate, next_number)
  next_candidate = [] 
  candidate.each do |i|
  next_candidate << i + next_number
  next_candidate << i - next_number
  end
  return next_candidate
end

candidate_untilB = plus_minus([A], B)
candidate_untilC = plus_minus(candidate_untilB, C)
candidate_untilD = plus_minus(candidate_untilC, D)

index_7 = candidate_untilD.index(7)

def plusOrMinus(oneOrZero)
  if oneOrZero == 1
    return "-"
  end
  if oneOrZero == 0
    return "+"
  end
end

divided3 = index_7
remainder3 = divided3 % 2
plusOrMinus3 = plusOrMinus(remainder3)

divided2 = divided3 / 2
remainder2 = divided2 % 2
plusOrMinus2 = plusOrMinus(remainder2)

divided1 = divided2 / 2
remainder1 = divided1 % 2
plusOrMinus1 = plusOrMinus(remainder1)

answer = A.to_s + plusOrMinus1 + B.to_s + plusOrMinus2 + C.to_s + plusOrMinus3 + D.to_s
puts answer + "=7"