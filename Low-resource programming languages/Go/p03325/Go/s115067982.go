package main

import "fmt"

func allOdd(i []int) bool {
	for _, v := range i {
		if v%2 == 0 {
			return false
		}
	}
	return true
}

func main() {
	var n int
	var a []int

	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var i int
		fmt.Scan(&i)
		a = append(a, i)
	}

	count := 0
	for i := 0; !allOdd(a); i++ {
		divCount := 0
		for j, v := range a {
			if divCount == 0 && v%2 == 0 {
				a[j] = v / 2
				divCount++
			} else {
				a[j] = 3 * v
			}
		}
		count++
	}
	fmt.Println(count)
}
