def monthable? number
  (1..12).include? number
end

s = gets.chomp.to_i
former = s / 100
latter = s % 100

is_former_monthable = monthable? former
is_latter_monthable = monthable? latter

answer =
  case
  when is_former_monthable && is_latter_monthable
    "AMBIGUOUS"
  when is_former_monthable && !is_latter_monthable
    "MMYY"
  when !is_former_monthable && is_latter_monthable
    "MMYY"
  else
    "NA"
  end

puts answer
