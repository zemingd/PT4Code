@n,m=gets.split.map(&:to_i)
@k=$<.map{|s|s.split.map &:to_i}
@pp=@k.pop
@k.map!{|m|m[1..-1].map{|mm|mm-1}}
def f(a)
    ii = 0
    if a.size == @n
        dd = @k.reject.with_index { |e,i|
            (a.values_at(*e).inject(:+) % 2) == @pp[i]
        }
        if dd ==[]
            return 1
        else
            return 0
        end
    end
    ii += f(a + [0], )
    ii += f(a + [1])
    return ii
end

p f([])

