package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var (
		K, A, B     int
		inputSecond string
		slice       []string
	)

	fmt.Scan(&K)
	fmt.Scan(&inputSecond)

	slice = strings.SplitN(inputSecond, "", 2)

	A, _ = strconv.Atoi(slice[0])
	B, _ = strconv.Atoi(slice[1])

	if Kmultiple := K * 2; A <= Kmultiple && Kmultiple <= B {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}

}
