package main

import (
    "bufio"
    "fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var A, B, C, K int
	fmt.Scan(&A,&B,&C,&K)
	var total int
	if (A > 0) && (A <= K) {
		total += A
		K -= A
	} else if (A > 0) && (A > K) {
		total += K
		K = 0
	}
	if B > K{
		K = 0
	} else {
		K -= B
	}
	if K != 0{
		total -= K
	}
	fmt.Println(total)
}