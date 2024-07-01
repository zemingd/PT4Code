package main

import "fmt"

func color(a int) int {
	if a >= 3200 {
		return 8
	}
	return a / 400
}

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	cols := make([]int, 9)
	for _, a := range as {
		cols[color(a)]++
	}

	num_normal_color := 0
	for i := 0; i < 8; i++ {
		if cols[i] > 0 {
			num_normal_color++
		}
	}
	if num_normal_color == 0 {
		fmt.Println(1, cols[8])
	} else {
		fmt.Println(num_normal_color, num_normal_color+cols[8])
	}
}
