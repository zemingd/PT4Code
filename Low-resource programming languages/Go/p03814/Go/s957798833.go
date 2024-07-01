package main

import (
	"fmt"
	"strings"
)

func main(){
	var s string
	fmt.Scan(&s)

	var a = strings.Index(s, "A")
	var z = strings.LastIndex(s, "Z")

	fmt.Println(z - a + 1)
}
