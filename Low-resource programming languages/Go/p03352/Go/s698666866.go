package main

import "fmt"

func pow(n, x int64) int64 {
	if n == 1 {
		return 1
	}
	if x == 0 {
		return 1
	}
	r := n * pow(n, x-1)
	return r
}
func main() {
	var b, p, X int64
	fmt.Scan(&X)
	var max int64 = 1
	for b = 1; b <= 40; b++ { // 30^2 < 1000 < 40*2
		for p = 2; p <= 10; p++ { // 1000 < 2^10 == 1024
			s := pow(b, p)
			if s > X {
				break
			}
			if s > max {
				max = s
			}
		}
	}
	fmt.Println(max)
}
