package main

import "fmt"

func main() {
	var a, b, c, d, e int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)
	fmt.Scan(&e)

	times := []int{a, b, c, d, e}
	minNum := 10
	sum := 0

	for _, t := range times {
		sum += (t / 10) * 10
		if t%10 == 0 {
			continue
		} else if minNum == 10 {
			minNum = t % 10
		} else if minNum > t%10 {
			minNum = t % 10
			sum += 10
		} else {
			sum += 10
		}
	}

	sum += minNum

	fmt.Println(sum)

}
