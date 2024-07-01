package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	res := 0
	for i := 0; n > 0; i++ {
		res++
		n = n / k
	}

	fmt.Println(res)
}
