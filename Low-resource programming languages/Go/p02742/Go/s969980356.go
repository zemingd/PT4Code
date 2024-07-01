package main

import "fmt"

func main() {
	var H int
	var W int
	fmt.Scan(&H, &W)
	rows := H / 2
	total := rows * W
	fmt.Println(total)
}
