package main

import (
	"fmt"
)

func main() {
	var s string
	var k int

	fmt.Scan(&k)
	fmt.Scan(&s)

	length := len(s)
	if length <= k {
		fmt.Println(s)
		return
	}
	for i := 0; i < k; i++ {
		c := s[i]
		//fmt.Println(reflect.TypeOf(c))
		fmt.Printf("%c",c)
	}
	fmt.Print("...")
}