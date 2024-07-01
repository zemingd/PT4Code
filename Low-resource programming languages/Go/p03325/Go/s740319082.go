package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()
	ans := 0
	for i := 0; i < n; i++ {
		for a := ri(); a&1 == 0; a >>= 1 {
			ans++
		}
	}
	fmt.Println(ans)
}
