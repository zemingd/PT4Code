package main

import (
	"fmt"
	"os"
)

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	var a, b, c, d, e int
	var f [5]int
	fmt.Fscan(fp, &a, &b, &c, &d, &e)
	f[0] = a % 10
	f[1] = b % 10
	f[2] = c % 10
	f[3] = d % 10
	f[4] = e % 10
	sum := wait(a) + wait(b) + wait(c) + wait(d) + wait(e)
	min := 10
	minI := -1
	for i := 0; i < 5; i++ {
		if f[i] < min && f[i] > 0 {
			min = f[i] % 10
			minI = i
		}
	}
	for i := 0; i < 5; i++ {
		if i == minI {
			sum += f[i]
			continue
		}
		if f[i] > 0 {
			sum += 10
		}
	}
	fmt.Println(sum)
}
func wait(time int) int {
	return time - time%10
}
