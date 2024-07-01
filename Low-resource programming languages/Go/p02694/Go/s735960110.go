package main

import "fmt"

func main() {
	var X float64
	fmt.Scan(&X)
	i := 0
	cur := 100.0
	for cur < X {
		cur = cur + float64(int(cur*0.01))
		i += 1
	}
	fmt.Println(i)
}
