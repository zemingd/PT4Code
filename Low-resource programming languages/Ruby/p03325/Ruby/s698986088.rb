N = gets.to_i
as = gets.split.map(&:to_i)

def judge(a,c)
    if a % 2 == 0
        judge(a/2,c+1)
    else
        return c
    end
end

ans = 0

t = as.map{|x| judge(x,0)}
p t.inject(0) { |m, x| m + x }
