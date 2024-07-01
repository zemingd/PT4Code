package main

import (
	"fmt"
)

func main()  {
	var input int
	_, _ = fmt.Scan(&input)

	if input % 2 == 0 {
		fmt.Println(input / 2)
		return
	}

	if input % 2 == 1 {
		fmt.Println(input / 2 + 1)
		return
	}
}
