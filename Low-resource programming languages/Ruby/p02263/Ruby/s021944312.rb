#一つの数式が一行に与えられます
#連続するシンボルは一つの空白で区切られて与えられます
#計算結果を一行に出力してください
require "pp"


input = gets.chomp.split(" ")
stack = %w[]
input.each do |str|
  if str =~ /^[0-9]/
    stack.push str
  else
    if str == "+"
      second = stack.pop.to_i
      first = stack.pop.to_i
      stack.push(first-second)
    elsif str == "-"
      second = stack.pop.to_i
      first = stack.pop.to_i
      stack.push(first-second)
    elsif str == "*"
      second = stack.pop.to_i
      first = stack.pop.to_i
      stack.push(second*first)
    end
  end
end
puts stack[0]


