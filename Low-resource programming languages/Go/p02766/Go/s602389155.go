package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ans := 1
	for {
		if n > k {
			k *= k
			ans++
		} else {
			break
		}
	}
	fmt.Println(ans)
}
