p->(s,k){s.each_with_index{|i,j|return (j<k ?i:1)if i!=1}}.(gets.split('').map(&:to_i),gets.to_i)
