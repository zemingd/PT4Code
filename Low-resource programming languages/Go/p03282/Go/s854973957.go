package main

import "fmt"

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)
	one := 0
	value := ""
	for _, i := range s {
		tmp := string(i)
		if tmp != "1" {
			value = tmp
			break
		}
		one++
	}
	if k <= one {
		fmt.Println(1)
	} else {
		fmt.Println(value)
	}
}