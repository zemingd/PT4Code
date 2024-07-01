# require 'pry'
S = gets.chomp.to_s.split('')
T = gets.chomp.to_s.split('')

# binding.pry

@t = Array.new(T.size)

T.each_with_index do |t, i|
  @t[i] = S.index(t)
end


@step = 0
@last = 0
@t.each_with_index do |t, i|
  if i == (T.size - 1)
    @last = (t + 1)
  else
    if t > @t[i+1]
      @step += 1
    end
  end
end

puts (S.size * @step) + @last

# binding.pry
