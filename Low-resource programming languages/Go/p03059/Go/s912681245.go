package main

import (
	"fmt"
	"time"
)

func main() {
	var a, b, t int64
	fmt.Scanf("%d %d %d", &a, &b, &t)
	limit := time.Duration(t)*time.Second + 500*time.Millisecond
	var i int64 = 1
	var biscuits int64
	for begin := time.Now(); time.Since(begin) < limit; {
		time.Sleep(time.Duration(i*a) * time.Second)
		biscuits += b
		i += 1
	}
	fmt.Println(biscuits)
}
