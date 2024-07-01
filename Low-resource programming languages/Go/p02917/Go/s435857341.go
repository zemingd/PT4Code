package main

import "fmt"

func main() {
	var n int
	var bs []int
	fmt.Scanf("%d", &n)
	for i := 1; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		bs = append(bs, tmp)
	}
	fmt.Println(exec(bs))
}

// Bi >= MAX(Ai, Ai+1)
func exec(bs []int) int {
	as := make([]int, len(bs)+1)
	var s int
	for i, b := range bs {
		as[i] = b
		as[i+1] = b
		if i != 0 && bs[i-1] < as[i] {
			as[i] = bs[i-1]
		}
	}
	for _, a := range as {
		s += a
	}
	return s
}