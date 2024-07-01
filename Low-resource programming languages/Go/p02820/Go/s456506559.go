package main

import (
	"fmt"
)

var n, k, r, s, p int
var t string
var point = make(map[rune]int)

func main() {
	fmt.Scan(&n)
	fmt.Scan(&k)
	fmt.Scan(&r)
	fmt.Scan(&s)
	fmt.Scan(&p)
	fmt.Scan(&t)

	point['s'] = r
	point['p'] = s
	point['r'] = p

	js := make([]string, k)

	for i, tt := range t {
		js[i%k] += string(tt)
	}

	sum := 0
	for _, j := range js {
		sum += don(j)
	}
	fmt.Print(sum)
}

func don(j string) int {
	var sum int

	ru := []rune(j)
	for i, ss := range ru {
		if i == 0 {
			sum += point[ss]
			continue
		}
		if ru[i-1] != ss {
			sum += point[ss]
		} else {
			ru[i] = 'x'
		}
	}
	return sum
}
