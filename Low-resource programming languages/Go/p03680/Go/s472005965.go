package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n+1)
	for i := 1; i <= n; i++ {
		fmt.Scan(&a[i])
	}

	v := make([]bool, n+1)

	next := 1
	cnt := 1
	for {
		v[next] = true
		next = a[next]
		if next == 2 {
			break
		}
		if v[next] {
			break
		}
		cnt++
	}

	if next != 2 {
		fmt.Println(-1)
		return
	}

	fmt.Println(cnt)
}