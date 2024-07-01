    X = gets.chomp.to_i               # 単一整数
    X.freeze
     
    a = 0
    b = 0
     
    for num1 in -118..120 do
      for num2 in -num1..num1 do
        if num1 ** 5 - num2 ** 5 == X then
          a = num1
          b = num2
          break
        end
      end
    end
    puts a.to_s + " " + b.to_s