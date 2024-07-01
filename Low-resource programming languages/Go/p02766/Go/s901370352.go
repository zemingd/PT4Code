package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ans := 1
	for {
		if n/k == 0 {
			fmt.Println(ans)
			return
		}
		n /= k
		ans++
	}
}
