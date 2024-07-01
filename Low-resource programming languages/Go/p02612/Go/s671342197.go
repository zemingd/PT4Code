package main

import "fmt"

import "strconv"

func main() {
	var N string
	fmt.Scan(&N)

	n := string([]rune(N)[0])

	var I int
	I, _ = strconv.Atoi(N)

	if I <= 1000 {
		fmt.Println(1000 - I)
	} else if I >= 10000 {
		fmt.Println(0)
	} else {
		m, _ := strconv.Atoi(n)
		tmp := 1000*(m+1) - I
		if tmp == 1000 {
			fmt.Println(0)
		} else {
			fmt.Println(tmp)
		}
	}

}