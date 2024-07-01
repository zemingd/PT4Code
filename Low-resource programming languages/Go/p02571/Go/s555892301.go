package main 

import (
"fmt"
"strings"
)

var s, t string
func main() {
	fmt.Scan(&s, &t)
	s_array := strings.Split(s, "")
	t_array := strings.Split(t, "")
	ans := len(t_array)
	for i := 0; i < len(s_array)-len(t_array)+1; i++ {
		one_ans := 0
		one_i := i
		for j := 0; j < len(t_array); j ++ {
			if s_array[one_i] != t_array[j] {
				one_ans += 1;
			}
			one_i ++
		}
		if ans > one_ans {
			ans =  one_ans
		}
	}

	fmt.Println(ans)
}