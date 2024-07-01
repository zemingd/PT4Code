package main

import "fmt"

func main() {
	var y, m, d int

	fmt.Scanf("%d/%d/%d", &y, &m, &d)
	fmt.Printf("%d/%02d/%02d", 2018, m, d)
}
