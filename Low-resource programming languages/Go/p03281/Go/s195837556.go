package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	count := 0

	if N >= 105 {
		count = count + 1
	}

	if N >= 135 {
		count = count + 1
	}

	if N >= 165 {
		count = count + 1
	}

	if N >= 189 {
		count = count + 1
	}

	if N >= 195 {
		count = count + 1
	}

	fmt.Println(count)

}
