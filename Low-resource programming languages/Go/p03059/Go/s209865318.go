package main

import "fmt"

func main() {
	var a, b, t int
	fmt.Scan(&a, &b, &t)
	cnt := 0
	bis := 0
	for {
		cnt += a
		if cnt > t{
			break
		}
		bis += 1 
	}
	fmt.Println(b * bis)
}