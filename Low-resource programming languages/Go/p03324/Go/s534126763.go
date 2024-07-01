package main

import "fmt"

func main() {
	var d, n, hoge, i float64

	hoge = 1
	fmt.Scan(&d, &n)
	for i = 0; i < d; i++ {

		hoge *= 100

	}
	fmt.Println(hoge * n)

}
