package main

import "fmt"

func main() {
	var y, m, d string

	fmt.Scanf("%s/%s/%s", &y, &m, &d)
	fmt.Printf("2018/%s/%s", m, d)
}
