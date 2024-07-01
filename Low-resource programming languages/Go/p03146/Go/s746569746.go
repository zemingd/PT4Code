package main

import (
	"fmt"
)

func cal(n int) int {
	return n
}

func main() {
	var num int

	fmt.Scan(&num)
	exsits := make(map[int]bool, 1000000)

	exsits[num] = true

	for i := 1; i <= 1000000; i++ {
		if num%2 == 0 {
			num /= 2
		} else {
			num = num*3 + 1
		}

		if exsits[num] {
			fmt.Println(i + 1)
			break
		}

		exsits[num] = true
	}

}
