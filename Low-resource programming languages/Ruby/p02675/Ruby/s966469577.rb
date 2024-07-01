puts  case gets.to_i % 10
      when 0,2, 4, 5, 7, 9
        "hon"
      when 1, 6, 8
        "pon"
      else
        "bon"
      end