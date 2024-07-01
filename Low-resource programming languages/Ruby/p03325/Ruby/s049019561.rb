N = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

# 一つ以上偶数があれば操作可能
# 最大回数操作する為には、偶数はなるべくキープしたい
# 最初に見つけた偶数に対してのみ2で割る操作をして、あとは3倍
# ちなみに、最初に見つけた偶数の添え字が分かっているのであれば、そこより前はチェックしなくて良いはず

operable = true
count = 0

while operable
  even_found = false
  arr = arr.map do |num|
    if even_found
      num * 3
    else
      if num.even?
        even_found = true
        num / 2
      else
        num * 3
      end
    end
  end
  count += 1
  operable = false unless even_found
end

puts count
