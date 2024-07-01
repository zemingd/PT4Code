package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	//総当たり
	sum := 0
	str := ""

	for i := 0; i < (1 << uint(3)); i++ {
		tmp := uint(i)
		sum, _ = strconv.Atoi(s[0:1])
		str = s[0:1]

		for j := 1; j <= 3; j++ {
			n, _ := strconv.Atoi(s[j : j+1])
			if tmp&1 == 1 {
				sum += n
				str += fmt.Sprintf("+%d", n)
			} else {
				sum -= n
				str += fmt.Sprintf("-%d", n)
			}

			tmp = tmp >> 1
		}

		if sum == 7 {
			str += "=7"
			break
		}

	}

	fmt.Println(str)
}
