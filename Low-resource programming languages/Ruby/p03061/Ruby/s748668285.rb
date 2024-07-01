require "prime"

n = gets.to_i
numbers = gets.chomp.split.map(&:to_i)
table = Hash.new(0)
arr = []
numbers.each{|x|
    arr << Prime.prime_division(x)
    arr.last.each{|p, x|
        1.upto(x){|i| table[[p, i]] += 1}
    }
}
answer = 1
arr2 = Hash.new(1)
table.to_a.each{|ar, x|
    case x
    when n
        answer *= ar[0]
    when n - 1
        arr.each_with_index{|ar2, i|
            kouho = -1
            ar2.each{|p, y|
                if p == ar[0]
                    if y >= ar[1]
                        kouho = 0
                    else
                        kouho = ar[1] - y
                    end
                    break
                end
            }
            if kouho == -1
                arr2[i] *= (ar[0] ** ar[1])
            elsif kouho > 0
                arr2[i] *= (ar[1] ** kouho)
            end
        }
    end
}
answer *= arr2.values.max unless arr2.values.empty?
puts answer