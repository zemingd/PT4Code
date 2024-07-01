// +build ignore

package main

import "fmt"

func main() {
	var A, P int
	fmt.Scan(&A, &P)
	fmt.Println(int((A * 3 + P)/2))
}