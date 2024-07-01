package main

import (
	"fmt"
	"strconv"
	"strings"
)

func contain7(n int) bool {
	return strings.Contains(strconv.Itoa(n), "7")
}

func main() {

	var n int
	_, err := fmt.Scan(&n)

	if err != nil {
		fmt.Println(err)
	}

	var result = contain7(n)
	fmt.Println(result)
}
