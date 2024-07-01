package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	honest := make(map[int]int)
	unkind := make(map[int]int)
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		for j := 0; j < a; j++ {
			var x, y int
			fmt.Scan(&x, &y)
			if y == 1 {
				honest[x]++
			} else {
				unkind[x]++
			}
		}
	}

	var sum int
	for i := 1; i < n+1; i++ {
		if (honest[i] != 0 && unkind[i] != 0) && (honest[i] == unkind[i]) {
			continue
		} else {
			sum++
		}
	}

	if n == sum {
		fmt.Println(1)
	} else {
		fmt.Println(sum)
	}
}
