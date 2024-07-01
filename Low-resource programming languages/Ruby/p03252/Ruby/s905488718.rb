S=gets.chomp.chars
T=gets.chomp.chars
def f(a,b)
    h = {}
    a.zip(b) do |s,t|
        h[s] ||= []
        h[s] << t
    end

    h.each do |k,v|
        # p [k,v]
        if v.uniq.size != 1
            puts 'No'
            exit 0
        end
    end
end
f(S,T)
f(T,S)

puts 'Yes'


