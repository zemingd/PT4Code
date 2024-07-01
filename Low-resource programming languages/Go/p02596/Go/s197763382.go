package main

import (
	"fmt"
	"math"
)

func main() {
	var k int
	lovenum := 7
	fmt.Scan(&k)
	if k % 2 == 0{
		fmt.Println(-1)
		return
	}

	for i:=1;;i++{
		if lovenum >= k && lovenum % k == 0{
			fmt.Println(i)
			return
		}
		lovenum += int(math.Pow(10.0, float64(i))) * 7
	}
} 