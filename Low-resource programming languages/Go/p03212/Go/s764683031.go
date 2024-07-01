package main

import "fmt"

func is(n int, num int) bool {
	for {
		if n < 1 {
			return false
		}
		if n%10 == num {
			return true
		} else {
			n /= 10
		}
	}
}
func main() {
	var n int
	fmt.Scan(&n)

	count := 0
	for i := n; i >= 357; i-- {
		if is(i, 3) && is(i, 5) && is(i, 7) {
			count++
		}
	}
	fmt.Println(count)

}