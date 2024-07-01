package main

import "fmt"

func main() {
	durs := make([]int, 0)
	for i := 0; i < 5; i++ {
		var t int
		fmt.Scan(&t)
		durs = append(durs, t)
	}

	minRem := 9
	minRemIdx := 0
	for i := 0; i < 5; i++ {
		r := durs[i] % 10
		if r < minRem && r != 0 {
			minRem = r
			minRemIdx = i
		}
	}

	time := 0
	for i := 0; i < 5; i++ {
		if i != minRemIdx {
			time += (durs[i] / 10) * 10 + 10
		} else {
			time += durs[i]
		}
	}
	fmt.Println(time)
}