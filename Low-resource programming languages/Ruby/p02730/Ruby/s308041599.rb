s = gets.chomp

def y(f)
  puts f ? "Yes" : "No"
end

class String
  # 文字列が回文であればtrueを返す
  def palindrome?
    self == self.reverse
  end
end
 
n = s.size
# 1つ目、2つ目の条件を満たせば、3つ目も満たす
y(s.palindrome? && s[0,(n-1)/2].palindrome?)