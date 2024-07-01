#!/usr/bin/ruby
#encoding "UTF-8"

class Answer
  def initialize(ans)
    @ans = ans
  end

  def ans
        print @ans

  end
end
h,a = gets.split.map(&:to_i)
# h = gets.to_i
# a = gets.to_i

i = 0

while(h>=0)
  h-=a
  i+=1
end

ans = Answer.new(i)
ans.ans
