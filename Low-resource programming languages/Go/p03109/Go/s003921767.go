package main

import (
	"fmt"
)

func main() {
	var year int
	var month int
	var date int
	// 2019/01/01
	_, _ = fmt.Scanf("%d/%d/%d", &year, &month, &date)
	if year <= 2019 && month <= 4 {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}


}