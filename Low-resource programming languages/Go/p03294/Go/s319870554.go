package main

import "fmt"

func sum(ar []int) int {
	s := 0
	for _, ar := range ar {
		s += ar
	}
	return s
}

func main() {
	var N int
	fmt.Scan(&N)
	as := make([]int, N)
	for i := range as {
		fmt.Scan(&as[i])
	}

	fmt.Println(sum(as) - N)
}
