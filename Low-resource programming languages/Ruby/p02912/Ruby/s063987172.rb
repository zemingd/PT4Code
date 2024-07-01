N,M=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort
class Array
    def add(e)
        idx=self.bsearch_index{|n|e<=n}
        if idx.nil?
            self.unshift(e)
        else
            self.insert(idx,e)
        end
    end
end
M.times do
    e=as.pop
    as.add(e/2)
end
puts as.inject(:+)