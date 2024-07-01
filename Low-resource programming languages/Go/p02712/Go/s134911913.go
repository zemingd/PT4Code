package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	var res int64
	for i := 1; i <= N; i++ {
		if i%3 == 0 || i%5 == 0 {
			continue
		}
		res = res + int64(i)
	}
	fmt.Println(res)

}
