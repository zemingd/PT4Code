package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	sum := 0
	bk := ""
	target := ""
	for _, v := range s {
		target += string(v)
		if bk != target {
			sum++
			bk = target
			target = ""
		}
	}
	fmt.Println(sum)
}
