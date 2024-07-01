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
  sum = eval("#{n[0]} #{ops[0]} #{n[1]} #{ops[1]} #{n[2]} #{ops[2]} #{n[3]}")
  if sum === 7
    puts sum
    break
  end
end

# 全探査のゴミコードです。。w