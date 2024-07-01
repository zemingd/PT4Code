package main

import (
	"fmt"
	//"math"
	//"strings"
)

func main() {
	var a,b,t int
	fmt.Scan(&a,&b,&t)

	fmt.Print(int(t/a*b))
}