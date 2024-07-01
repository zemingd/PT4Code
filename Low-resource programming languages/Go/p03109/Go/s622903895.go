package main

import (
	"fmt"
	"strings"
	"strconv"
)

func main() {
	var S string
	var a,b int
	fmt.Scan(&S)
	list := strings.Split(S,"/")
	a, _ = strconv.Atoi(list[0])
	b, _ = strconv.Atoi(list[1])

	if  a<2019{
		fmt.Println("Heisei")
		return
	} else {
		if b<4 {
			fmt.Println("Heisei")
			return
		} else if b==4 {
			fmt.Println("Heisei")
			return
		} else {
			fmt.Println("TBD")
			return
		}
	}
}
