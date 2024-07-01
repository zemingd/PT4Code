package main

import "fmt"

func nextInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func main() {
	n := nextInt()
	k := nextInt()

	var one int
	for i := range make([]struct{}, n) {
		if nextInt() == 1 {
			one = i
		}
	}
	pos := one
	cnt := 0
	bonus := 0

	for pos > 0 {
		pos -= k - 1
		cnt++
		if pos < 0 {
			bonus += -pos
		}
	}
	pos = one
	for pos < n-1 {
		pos += k - 1
		cnt++
		if pos >= n {
			bonus += pos - (n - 1)
		}
	}
	fmt.Println(cnt - bonus/(k-1))
}
