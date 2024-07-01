# n = gets.to_i
s = gets.chomp
# n,m = gets.split.map(&:to_i)

def y(f)
    puts f ? "Yes" : "No"
end

# y(true)

 class String
   # 文字列が回文であればtrueを返す
   def palindrome?
     self == self.reverse
   end
 end
 
n = s.size
y(s.palindrome? && s[0,(n-1)/2].palindrome? && s[(n+3)/2-1,(n-1)/2].palindrome? )