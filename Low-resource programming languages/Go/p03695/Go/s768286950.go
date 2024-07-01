package main

import "fmt"

var color map[int]int

func getScore(score int) int {
	if score >= 3200 {
		return 0
	} else {
		return int(score / 400)
	}
}

var N int

func main() {
	color = make(map[int]int)
	fmt.Scan(&N)
	tmp := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&tmp)
		color[getScore(tmp)] += 1
	}

	num := 0
	for c, _ := range color {
		if c != 0 {
			num += 1
		}
	}

	max := 0
	min := num
	if num+color[0] >= 8 {
		max = 8
	} else {
		max = num + color[0]
	}
	fmt.Println(min, max)
}
