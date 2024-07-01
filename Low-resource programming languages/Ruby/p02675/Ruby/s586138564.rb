n = gets.to_i

print n % 10 == 1 ? "pon" :
      n % 10 == 2 ? "hon" :
      n % 10 == 3 ? "bon" :
      n % 10 == 4 ? "hon" :
      n % 10 == 5 ? "hon" :
      n % 10 == 6 ? "pon" :
      n % 10 == 7 ? "hon" :
      n % 10 == 8 ? "pon" :
      n % 10 == 9 ? "hon" :
      n % 10 == 0 ? "pon" : ""
      
