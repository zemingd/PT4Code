class C_question
    def calc(n,a,b,c,d,e)
        div_list = [a,b,c,d,e]
        div = ((n%div_list.min == 0)? n/div_list.min : n/div_list.min + 1 )
        return div + 4
    end
end

N = gets.chomp.to_i
A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i
E = gets.chomp.to_i
ans = C_question.new.calc(N,A,B,C,D,E)
puts ans