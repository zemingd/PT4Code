package main

import "fmt"

func main() {
	var n, x int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &x)

	ls := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &ls[i])
	}

	d := 0
	ans := 1
	for _, l := range ls {
		d += l
		if d > x {
			break
		}
		ans++
	}
	fmt.Println(ans)
}
