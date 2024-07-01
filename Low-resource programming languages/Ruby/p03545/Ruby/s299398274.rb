# 適当に入れてく感じ
# 3箇所なので8通りだけ
s = gets.chomp.chars.map(&:to_i)
operator = ["+", "-"]
operator.each do |a|
  operator.each do |b|
    operator.each do |c|
      ret = 0
      if a=="+"
        ret += s[0]+s[1]
      elsif a=="-"
        ret += s[0]-s[1]
      end
      if b=="+"
        ret += s[2]
      elsif b=="-"
        ret -= s[2]
      end
      if c=="+"
        ret += s[3]
      elsif c=="-"
        ret -= s[3]
      end
      if ret == 7
        puts s[0].to_s+a+s[1].to_s+b+s[2].to_s+c+s[3].to_s+"=7"
        exit
      end
    end
  end
end