N = gets.to_i
As = gets.split.map(&:to_i)

as = As.sort.uniq
if as.size == 1
  puts 0; exit
elsif as[0] == 1
  puts 1; exit
else
  am = as.last
  @m = Array.new(am + 1, false)
  ans = 0
  as.uniq.each do |a|
    next if @m[a]
    ans += 1
    a.step(am, a){@m[_1] = true}
  end
  puts ans
end