package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b int
	var aStr,bStr string
	fmt.Scan(&a, &b)
	for i:= 0 ; i < b ; i++ {
		aStr += strconv.Itoa(a)
	}
	for i:= 0 ; i < a ; i++ {
		bStr += strconv.Itoa(b)
	}

	if aStr < bStr{
		fmt.Println(aStr)
	} else {
		fmt.Println(bStr)
	}

}

