package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int,n+1,n+1)
	b := make([]int,n+1,n+1)
	c := make(map[int]int)

	for i := 1; i <= n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		a[i] = tmp
		b[i] = tmp + i
		_, ok := c[b[i]]
		if ok {
			c[b[i]]++
		} else {
			c[b[i]] = 1
		}
	}

	answer := 0
	for i := 1; i <= n; i++ {
		count, ok := c[-b[i] + 2 * i]
		if ok {
			answer += count
		}
	}

	fmt.Println(answer)
}