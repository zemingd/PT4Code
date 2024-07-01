package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	l := make([]int, n)
	for i := range l {
		fmt.Scan(&l[i])
	}

	var ans int = 1
	d := make([]int, n+1)
	for i := 1; i < len(d); i++ {
		d[i] = d[i-1] + l[i-1]
		if d[i] <= x {
			ans++
		}
	}
	fmt.Println(ans)
}