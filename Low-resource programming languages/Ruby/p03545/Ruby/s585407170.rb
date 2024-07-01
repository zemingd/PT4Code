n = gets.chomp.split("").map(&:to_i)

patterns = [
  ["+", "+", "+"],
  ["+", "+", "-"],
  ["+", "-", "-"],
  ["+", "-", "+"],
  ["-", "+", "+"],
  ["-", "+", "-"],
  ["-", "-", "-"],
  ["-", "-", "+"],
]

patterns.each do |ops|
  fomula = "#{n[0]}#{ops[0]}#{n[1]}#{ops[1]}#{n[2]}#{ops[2]}#{n[3]}"
  sum = eval(fomula)
  if sum === 7
    puts fomula + "=7"
    break
  end
end

# 出力ミス