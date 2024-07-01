package main

import "fmt"

func main() {
	var n, a, b, c, d, e int
	fmt.Scan(&n)
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)
	fmt.Scan(&e)

	times := []int{a, b, c, d, e}
	minNum := n
	sum := 4

	for _, t := range times {
		if minNum > t {
			minNum = t
		}
	}

	if minNum == n {
		sum++
	} else {
		sum += (n + minNum - 1) / minNum
	}

	fmt.Println(sum)

}
