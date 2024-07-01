package main

import (
	"fmt"
)

func main() {
	var H, W uint64
	fmt.Scanf("%d %d\n", &H, &W)
	r := H / 2
	if H % 2 == 0 {
		fmt.Println(r * W)
    } else {
	times := W / 2
	result := times * r + times * (r+1)
	fmt.Println(result)
    }
}
