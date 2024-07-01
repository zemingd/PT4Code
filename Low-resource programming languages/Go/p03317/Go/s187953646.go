package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	x := k - 1

	i := -1
	for j := 1; j <= n; j++ {
		var tmp int
		fmt.Scan(&tmp)
		if tmp == 1 {
			i = j
		}
	}

	fmt.Println(i)
	count := ((i-1)+x-1)/x + ((n-i)+x-1)/x
	if (i-1)%x+(n-i)%x >= k {
		count--
	}
	fmt.Println(count)
}
