C753 = ['7', '5', '3'].freeze

def is753?(s)
  C753.each do |c|
    return false if !s.include?(c)
  end
  true
end

# 文字列 s で始まり、upper以下の 753数 の数を返す
# s自身が 753数ならそれも含む
def dfs(s, upper)
  cnt = 0
  return 0 if upper < s.to_i

  cnt += 1 if is753?(s)

  C753.each do |c|
    cnt += dfs(s + c, upper)
  end
  cnt
end

def main
  n = gets.chomp.to_i
  puts dfs("", n)
end

if __FILE__ == $0
  main
end
