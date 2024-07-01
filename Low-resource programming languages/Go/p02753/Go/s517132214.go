package main

import (
	"fmt"
	"strings"
)

func main()  {
	var input string


	_, _ = fmt.Scan(&input)

	if strings.Count(input, "A") == 3 {
		fmt.Println("No")
		return
	}

	if strings.Count(input, "B") == 3 {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")
	return
}
