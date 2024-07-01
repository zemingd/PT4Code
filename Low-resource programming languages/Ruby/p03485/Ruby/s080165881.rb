# 2 つの正整数 a, b が与えられます。 
a, b = gets.chomp.split(" ").map(&:to_f)

# a, b の平均値を x とします。 
x = ( (a+b)/2 ).ceil

# x の小数点以下を切り上げて得られる整数を出力してください。
p x