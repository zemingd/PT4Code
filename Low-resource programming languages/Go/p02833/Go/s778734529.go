package main

import "fmt"

func main() {
	var n int64
	fmt.Scan(&n)

	if n % 2 == 0 {
		n /= 2
		answer := int64(0)
		for n > 0 {
			n /= 5
			answer += n
		}
		fmt.Println(answer)
	} else {
		fmt.Println(0)
	}
}