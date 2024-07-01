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

	next := a[1]
	cnt := 1
	for {
		next = a[next]
		cnt++
		if next == 2 {
			break
		}
		if v[next] {
			break
		}
		v[next] = true
	}

	if next != 2 {
		fmt.Println(-1)
		return
	}

	fmt.Println(cnt)
}