package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	K := k
	ans := 1
	for {
		if n > k {
			k *= K
			ans++
		} else {
			break
		}
	}
	fmt.Println(ans)
}
