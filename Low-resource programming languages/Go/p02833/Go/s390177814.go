package main

import (
	"fmt"
)

func main(){
	var number int64
	fmt.Scanf("%d", &number)

	fmt.Printf("%d\n", answer(number))
}

func answer(n int64) int64 {
	ret := int64(0)
	for i := 1; i < 2000; i++ {
		t := int64(1)
		for j := 1; j <= i; j++ {
			t = t * 5
		}
		if n < (t * 2) {
			break
		}
		ret += n / (2 * t)
	}
	return ret
}