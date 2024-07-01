package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	x := makeAnsArray()
	for i := 1; i <= n; i++ {
		fmt.Println(x[i])
	}
}

func makeAnsArray() map[int]int {
	x := make(map[int]int, 2000000)
	for i := 1; i < 100; i++ {
		for j := 1; j < 100; j++ {
			for k := 1; k < 200 - i - j; k++ {
				x[(i + j + k) * (i + j + k) - i * j - j * k - i * k] += 1
			}
		}
	}

	return x
}