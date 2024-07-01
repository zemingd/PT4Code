# https://atcoder.jp/contests/abc126/tasks/abc126_b

def month?(num)
  num > 0 && num < 13
end

def year?(num)
  num != 0
end

S = gets.to_i

x = S / 100
y = S % 100

ans = if year?(x) && month?(y)
        month?(x) && year?(y) ? 'AMBIGUOUS' : 'YYMM'
      elsif month?(x) && year?(y)
        'MMYY'
      else
        'NA'
      end
puts ans
