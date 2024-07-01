package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	var result int
	result = result + N/2 + N%2

	fmt.Println(result)

}
