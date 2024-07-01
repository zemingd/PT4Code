package main

import (
	"fmt"
)

func main() {
	var n, m int
	var days int
	fmt.Scan(&n, &m)
	for i:=0;i<m;i++{
		fmt.Scan(&days)
		n -= days
		if n < 0{
			fmt.Println("-1")
			return
		}
	fmt.Println(n)
}