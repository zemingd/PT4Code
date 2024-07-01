package main

import "fmt"

func main() {
	var a [3]int
	fmt.Scanln(&a[0], &a[1], &a[2])
	for i := 0; i < 2; i++ {
		for j := i + 1; j < 3; j++ {
			if a[i] > a[j] {
				t := a[i]
				a[i] = a[j]
				a[j] = t
			}
		}
	}
	fmt.Println(a[0], a[1], a[2])
	return
}

