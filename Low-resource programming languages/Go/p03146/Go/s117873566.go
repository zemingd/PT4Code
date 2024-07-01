package main

import "fmt"

func getNext(x int) (y int) {
	if x%2 == 0 {
		y = x / 2
	} else {
		y = 3*x + 1
	}
	return
}

func main() {
	var s int
	fmt.Scan(&s)
	ls := []int{s}
L:
	for {
		next := getNext(ls[len(ls)-1])
		ls = append(ls, next)
		for i := 0; i < len(ls)-1; i++ {
			if ls[i] == next {
				break L
			}
		}
	}
	fmt.Println(len(ls))
}
