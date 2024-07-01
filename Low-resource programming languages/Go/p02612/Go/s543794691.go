package main

import "fmt"
import "strconv"

func main() {
	var N int
	fmt.Scan(&N)

	if N <= 1000 {
		fmt.Println(1000 - N)
	} else if N > 1000 && N < 10000 {
		tmp := (-1) * (1000 - N)
		if tmp > 1000 {
			a, _ := strconv.Atoi(strconv.Itoa(tmp)[1:])
			fmt.Println(a)
		} else {
			fmt.Println(tmp)
		}
	} else {
		fmt.Println(9000)
	}
}
