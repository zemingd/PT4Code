package main

import "fmt"

func pow(x, n int) int {
	ans := 1
	for i := 0; i < n; i++ {
		ans *= x
	}
	return ans
}

func main() {
	var x int
	fmt.Scan(&x)

	ans := 0
	for b := 1; b < 32; b++ {
		tmp := 0
		for p := 2; p < 10; p++ {
			if x < pow(b, p) {
				break
			}
			tmp = pow(b, p)
		}
		if ans < tmp {
			ans = tmp
		}
	}

	fmt.Println(ans)
}
