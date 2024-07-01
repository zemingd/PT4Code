package main

import (
	"fmt"
	_ "net/http/pprof"
    gods "github.com/emirpasic/gods"
)

func main() {
	var n,x,t int
	fmt.Scanf("%d %d %d", &n, &x, &t)
	fmt.Printf("%d\n", (n+x-1)/x * t)
}
