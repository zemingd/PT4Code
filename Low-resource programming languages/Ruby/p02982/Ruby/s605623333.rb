n, d = gets.chomp.split(' ').map(&:to_i)

tables = []
n.times { |_i| tables << gets.chomp.split(' ').map(&:to_i) }

count = 0
n.times do |i_idx|
  j = i_idx + 1
  j.upto(n-1) do |j_idx|
    total = []
    d.times { |k| total << (tables[i_idx][k] - tables[j_idx][k])**2  }
    
    ans = total.inject(:+)**(1/2.0)
    
    count += 1 if ans == ans.to_i
  end
end


puts count