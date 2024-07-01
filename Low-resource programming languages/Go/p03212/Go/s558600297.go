package main

import (
	"fmt"
	"strconv"
)

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
func isNotElse(n int, num1, num2, num3 int) bool {
	for {
		if n < 1 {
			return true
		}
		if n%10 == num1 || n%10 == num2 || n%10 == num3 {
			n /= 10
		} else {
			return false

		}
	}
}
func isS(h []string) bool {
	for i := 0; i < len(h); i++ {
		if h[i] != "3" && h[i] != "5" && h[i] != "7" {
			return false
		}
	}
	return true
}
func main() {
	var n int
	fmt.Scan(&n)

	count := 0

	for i := n; i >= 357; i-- {
		temp := strconv.Itoa(i)
		var head []string
		for j := 0; j < len(temp); j++ {
			head = append(head, string(temp[j]))
		}
		if isS(head) {
			if is(i, 3) && is(i, 5) && is(i, 7) && isNotElse(i, 3, 5, 7) {
				count++
			}
		}
	}
	fmt.Println(count)

}