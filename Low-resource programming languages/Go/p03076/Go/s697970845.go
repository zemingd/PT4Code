package main

import "fmt"

func ceil(i int) int {
	rem := i % 10
	if rem == 0 {
		return i
	}
	return i + 10 - rem
}

func main() {
	a := make([]int, 5)
	for i := 0; i < 5; i++ {
		fmt.Scan(&a[i])
	}

	var sum int
	ceils := make([]int, 5)
	for i, v := range a {
		ceiled := ceil(v)
		ceils[i] = ceiled
		sum += ceiled
	}
	var maxSave int
	for i := 0; i < 5; i++ {
		save := ceils[i] - a[i]
		if save > maxSave {
			maxSave = save
		}
	}

	fmt.Println(sum - maxSave)
}
