package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)
	cnt := 0
	for _, l := range s {
		if string(l) == "1" {
			cnt++
		}
	}
	fmt.Printf("%d", cnt)
}
