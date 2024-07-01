package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	l := make([]int, n)
	for i := range l {
		fmt.Scan(&l[i])
	}

	ans := 1
	pos := 0
	for _, v := range l {
		pos += v
		if pos <= x {
			ans++
		} else {
			fmt.Println(ans)
			return
		}
	}
}
