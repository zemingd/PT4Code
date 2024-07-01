package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	k := make([]int, 81)

	h := 0
	for i := 1; i <= 9; i++ {
		for j := 1; j <= 9; j++ {
			k[h] = i * j
			h++
		}
	}

	for _, v := range k {
		if n == v {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}
