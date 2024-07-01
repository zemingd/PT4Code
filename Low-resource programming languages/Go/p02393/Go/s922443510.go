package main

import "fmt"

func main() {
	var val, min, max int

	fmt.Scan(&val)
	min = val
	max = val

	fmt.Scan(&val)
	if val < min {
		min = val
	} else {
		max = val
	}

	fmt.Scan(&val)
	if val < min {
		fmt.Println(val, min, max)
	} else if max < val {
		fmt.Println(min, max, val)
	} else {
		fmt.Println(min, val, max)
	}
}

