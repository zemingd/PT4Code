package main

import (
    "bufio"
    "fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var N,K int
	fmt.Scan(&N,&K)
	flag := make([]int, N)
	for  i := 0; i < K; i++ {
		var D int
		fmt.Scan(&D)
		for j := 0; j < D; j++ {
			var A int
			fmt.Scan(&A)
			flag[A- 1]++
		}
	}
	count := 0
	for _,v := range flag {
		if v == 0 {
			count += 1
		}
	}
	fmt.Println(count)
}