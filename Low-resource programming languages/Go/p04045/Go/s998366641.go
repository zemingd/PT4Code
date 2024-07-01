package main

import "fmt"

func Check(ans int, d []int) bool {
	for ans > 0 {
		n := ans % 10
		for _, v := range d {
			if v == n {
				return true
			}
		}
		ans /= 10
	}
	return false
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	d := make([]int, k)
	for i := 0; i < k; i++ {
		fmt.Scan(&d[i])
	}

	for Check(n, d) {
		n++
	}

	fmt.Println(n)
}