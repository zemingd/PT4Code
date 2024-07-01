package main

import "fmt"

// import "fmt"
func readline(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	return a
}

func readInt() int {
	var a int
	fmt.Scan(&a)
	return a
}

func readTaple() (int, int) {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)
	return a, b
}

func main() {
	a, p := readTaple()
	fmt.Println((3*a + p) / 2)
}
