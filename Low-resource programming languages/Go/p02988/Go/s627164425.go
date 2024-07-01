package main

import "fmt"

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)
	p := make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}
	cnt := 0
	for i := 1; i < len(p)-1; i++ {
		sp := p[i-1 : i+2]
		pmax := max(sp[0], max(sp[1], sp[2]))
		pmin := min(sp[0], min(sp[1], sp[2]))
		if sp[1] != pmin && sp[1] != pmax {
			cnt++
		}
	}
	fmt.Println(cnt)
}
