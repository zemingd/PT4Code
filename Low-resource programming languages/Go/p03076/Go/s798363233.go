package main

import "fmt"

func main() {
	var A, B, C, D, E int
	fmt.Scan(&A)
	fmt.Scan(&B)
	fmt.Scan(&C)
	fmt.Scan(&D)
	fmt.Scan(&E)
	ans := 0
	lis := []int{A, B, C, D, E}
	diff := 0
	for i := 0; i < 5; i++ {
		ans += ((lis[i] + 9) / 10) * 10
		tmp_diff := ((lis[i]+9)/10)*10 - lis[i]
		// fmt.Println(tmp_diff)
		if tmp_diff > diff {
			diff = tmp_diff
		}
	}
	fmt.Println(ans - diff)
}
