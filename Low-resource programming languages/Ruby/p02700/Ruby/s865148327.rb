a, b, c, d = gets.split.map(&:to_i)
loop{
  s = (
    if (c -= b) <= 0
  	  'No'
  	elsif (a -= d) <= 0
      'Yes'
    end)
  unless s.nil?
    puts s
    break
  end
}