s = gets.chomp.split('')
@ans = 0

def search_list(list)
  list_size = list.size

  if list_size < 2
    puts @ans
    exit
  else
    (0..list_size-1).each do |i|
      next_num = i + 1
      if list[i] != list[next_num]
        list.delete_at(i)
        list.delete_at(i)

        @ans = @ans + 2
        search_list(list)
      end
    end
    puts @ans
  end
end

search_list(s)
