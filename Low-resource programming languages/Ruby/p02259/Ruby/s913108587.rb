  array_index = gets(chomp:true).to_i
  array = gets(chomp:true).split.map(&:to_i)

  rep_count = 0

  for loop_num in 0...array_index

    rigth_ope_index = array_index - 1
    left_cmp_index = rigth_ope_index - 1

    while left_cmp_index >= loop_num 

      while array[left_cmp_index] > array[rigth_ope_index]

        temp_elem = array[rigth_ope_index]

        array[rigth_ope_index] = array[left_cmp_index]
        array[left_cmp_index] = temp_elem

        rep_count += 1
      end

      left_cmp_index -= 1
      rigth_ope_index -= 1
    end

  end

  puts array.join(" ")
  puts rep_count

