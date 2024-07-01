package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	count := 0
	for _, v := range s{
		num, _ := strconv.Atoi(string(v))
		count += num
	}
	if count % 9 == 0{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}