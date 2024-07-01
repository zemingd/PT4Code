package main

import (
	"fmt"
	"strconv"
)

func main() {
	var str string
	_, _ = fmt.Scan(&str)
	n := len(str) - 1
	for i := 0; i < 1 << uint(n); i++ {
		total, _ := strconv.Atoi(string(str[0]))
		formula := string(str[0])
		for j := 0; j < n; j++ {
			tmp1, _ := strconv.Atoi(string(str[j + 1]))
			tmp2 := string(str[j + 1])
			if 1 & (uint(i) >> uint(j)) == 1 {
				total += tmp1
				formula += "+" + tmp2
			} else {
				total -= tmp1
				formula += "-" + tmp2
			}
		}
		if total == 7 {
			fmt.Println(formula + "=7")
			return
		}
	}
}