io = STDIN
a,b,c,d=io.gets.chomp.split(//)
def calc(a,b,c,d)
  %w(+ -).each do |op1|
    %w(+ -).each do |op2|
      %w(+ -).each do |op3|
        str = a + op1 + b + op2 + c + op3 + d
        ans = eval str
        return "#{str}=#{ans}" if ans == 7
      end
    end
  end
end
puts calc(a,b,c,d)
