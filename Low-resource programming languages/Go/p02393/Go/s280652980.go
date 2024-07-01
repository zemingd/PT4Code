package main

import "fmt"

func main() {
	l := make([]int, 3)
	for i := range l {
		fmt.Scan(&l[i])
	}


	for i := 0; i < len(l); i++ {
		for j := i + 1; j < len(l); j++ {
			if l[i] > l[j] {
				l[i], l[j] = l[j], l[i]
			}
		}
	}
	fmt.Println(l[0], l[1], l[2])

}

