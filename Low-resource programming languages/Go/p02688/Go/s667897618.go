package main

import (
    "bufio"
    "fmt"
	"os"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var N,K int
	fmt.Scan(&N,&K)
	flag := make([]int, N)
	for  i := 0; i < K; i++ {
		var D int
		fmt.Scan(&D)
		var A string
		if sc.Scan() {
			A = sc.Text()
		}
		for _, j := range strings.Fields(A) {
			index, _ := strconv.Atoi(j)
			flag[index - 1]++
		}
	}
	var count int
	for _,v := range flag {
		if v == 0 {
			count += 1
		}
	}
	fmt.Println(count)
}