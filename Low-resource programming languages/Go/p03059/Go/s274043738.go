package main

import "fmt"

func main() {
	var a, b, t int
	fmt.Scan(&a, &b, &t)
	fmt.Println(int(t/a) * b)

}
