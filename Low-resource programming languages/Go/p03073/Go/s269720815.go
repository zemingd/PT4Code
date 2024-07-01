package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	sum := 0
	for i, v := range s {
		if i%2 == 0 && v == '0' {
			sum++
		}
		if i%2 == 1 && v == '1' {
			sum++
		}
	}
	sum2 := 0
	for i, v := range s {
		if i%2 == 0 && v == '1' {
			sum2++
		}
		if i%2 == 1 && v == '0' {
			sum2++
		}
	}
	if sum < sum2 {
		fmt.Println(sum)
	} else {
		fmt.Println(sum2)
	}
}
