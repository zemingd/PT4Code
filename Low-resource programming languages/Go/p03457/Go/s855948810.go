package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	flg := true
	var t, x, y int
	for i := 0; i < N; i++ {
		fmt.Scan(&t, &x, &y)

		if (t-x-y) < 0 || (t-x-y)%2 != 0 {
			flg = false
		}
	}
	if flg {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
