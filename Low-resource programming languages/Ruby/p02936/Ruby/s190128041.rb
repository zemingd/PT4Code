# require 'pry'

N, Q = gets.chomp.split(' ').map(&:to_i)
AB = []
@parent = []
(N-1).times do
  ab  = gets.chomp.split(' ').map(&:to_i) 
  AB << ab
  @parent[ab[1]] = ab[0]
end

PX = []
Q.times do 
  PX << gets.chomp.split(' ').map(&:to_i)
end

@d = Array.new(N, 0)
@ans = Array.new(N, 0)

PX.each do |px|
  idx = (px[0] - 1)
  value = px[1]
  @d[idx] += value
end


@d.each_with_index do |v, i|
  if i == 0
    @ans[0] = @d[0]
  else
    parent_idx = @parent[i+1]
    @ans[i] = @ans[parent_idx-1] + @d[i]
  end
end


puts @ans.join(' ')

# binding.pry



