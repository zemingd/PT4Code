i = 0
loop {
  @datasets = (gets.to_i * 2) if i == 0
  i = (i + 1)

  if i > 0
    if i % 2 == 1
      @a = gets.to_i
    else
      @b = gets.to_i
      @c = @a + @b
      if @c.to_s.length <= 80
        puts @a + @b
      else
        puts 'overflow'
      end
    end
  end
  break if i == @datasets
}