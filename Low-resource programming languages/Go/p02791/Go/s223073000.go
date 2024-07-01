package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	p := make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}

	for j := 0; j < len(p); j++ {
		for i := j; i < len(p); i++ {
			if p[i] > p[j] {
				copy(p[i:], p[i+1:])
				p[len(p)-1] = 0
				p = p[:len(p)-1]
				i--
			}
		}
	}
	fmt.Println(len(p))
}
