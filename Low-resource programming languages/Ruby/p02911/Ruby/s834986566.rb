N,K,Q = gets.split.map(&:to_i)
a= [K]*N
Q.times do
  ai = gets.to_i
  a.map!.with_index {|aa, i|
    ai == i+1 ? aa : aa-1
  }
end
a.map!{|aa| aa <= 0 ? 'No' : 'Yes'}.each{ |aa| puts aa }

