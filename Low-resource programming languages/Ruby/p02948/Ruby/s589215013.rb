n, m = gets.split.map(&:to_i)

available_day = []
works = []
n.times { works << gets.split.map(&:to_i) }

(1..m).each{|i| available_day << i}

works.sort!{|a, b| (b[1] <=> a[1]).nonzero? || b[0] <=> a[0] }

sum = 0
works.each do |day, salary|
  if index = available_day.bsearch_index{|e| e >= day }
    available_day.delete_at(index)
    sum += salary
  end
end

p sum
