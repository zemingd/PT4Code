n = gets.to_i
min_count = 100000
(n / (9 ** 5)).downto(0) do |a|
  count1 = a
  if count1 < min_count
    n1 = n - (9 ** 5) * a
    (n1 / (6 ** 6)).downto(0) do |b|
      count2 = count1 + b
      if count2 < min_count
        n2 = n1 - (6 ** 6) * b
        ([n2 / (6 ** 5), 5].min).downto(0) do |c|
          count3 = count2 + c
          if count3 < min_count
            n3 = n2 - (6 ** 5) * c
            ([n3 / (9 ** 4), 8].min).downto(0) do |d|
              count4 = count3 + d
              if count4 < min_count
                n4 = n3 - (9 ** 4) * d
                ([n4 / (6 ** 4), 5].min).downto(0) do |e|
                  count5 = count4 + e
                  if count5 < min_count
                    n5 = n4 - (6 ** 4) * e
                    ([n5 / (9 ** 3), 8].min).downto(0) do |f|
                      count6 = count5 + f
                      if count6 < min_count
                        n6 = n5 - (9 ** 3) * f
                        ([n6 / (6 ** 3), 5].min).downto(0) do |g|
                          count7 = count6 + g
                          if count7 < min_count
                            n7 = n6 - (6 ** 3) * g
                            ([n7 / (9 ** 2), 8].min).downto(0) do |h|
                              count8 = count7 + h
                              if count8 < min_count
                                n8 = n7 - (9 ** 2) * h
                                ([n8 / (6 ** 2), 5].min).downto(0) do |i|
                                  count9 = count8 + i
                                  if count9 < min_count
                                    n9 = n8 - (6 ** 2) * i
                                    ([n9 / 9, 8].min).downto(0) do |j|
                                      count10 = count9 + j
                                      if count10 < min_count
                                        n10 = n9 - 9 * j
                                        ([n10 / 6, 5].min).downto(0) do |k|
                                          count11 = count10 + k
                                          if count11 < min_count
                                            n11 = n10 - 6 * k
                                            l = n11
                                            count12 = count11 + l
                                            min_count = count12 if min_count > count12
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
puts min_count
