if  sd_n_ns_od[-2]  && sd_n_ns_ev[-2]
  if sd_n_ns_od.last.first == sd_n_ns_ev.last.first
    answer=0
  answer+=od.reject{|i| i == sd_n_ns_od.last.first}.size
  answer+=ev.reject{|i| i == sd_n_ns_ev.last.first}.size
 end