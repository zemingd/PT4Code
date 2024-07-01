package main

import (
	"fmt"
	"strconv"
)

func main() {
	var input string
	fmt.Scanf("%s", &input)
	i, _ := strconv.Atoi(input)
	if i%4 == 0 || i%4 == 7 {
		fmt.Println("Yes")
	} else if i%7 == 0 || i%7 == 4 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
