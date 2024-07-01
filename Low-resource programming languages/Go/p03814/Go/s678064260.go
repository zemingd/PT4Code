package main

import (
	"fmt"
	"strings"
)

func main(){
	var s string
	fmt.Scan(&s)

	var a = strings.Index("A", s)
	var z = strings.LastIndex("Z", s)

	fmt.Println(z - a + 1)
}
