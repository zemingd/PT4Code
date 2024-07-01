package main

import "fmt"

func main() {
	var a, b, k, res int64

	fmt.Scan(&a, &b, &k)
	switch {
	case a > k:
		res = a - k
		fmt.Printf("%d %d", res, b)
		return
	case a < k:
		res = k - a
		if b-res > 0 {
			fmt.Printf("%d %d", 0, b-res)
			return
		} else {
			fmt.Printf("%d %d", 0, 0)
			return
		}
	default:
		fmt.Printf("%d %d", 0, b)
	}
}
