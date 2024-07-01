package main

import (
	"fmt"
)

func main() {
	var n,l int
	fmt.Scan(&n,&l)

	if (l+n>=0 && l<=0) {
		fmt.Println(0)
	} else {
		if l>0 {
			fmt.Println((l-1)*(n-1)+(2+n)*(n-1)/2)
		} else {
			fmt.Println((l-1)*(n-1)+n*(n-1)/2)
		}
	}
}
