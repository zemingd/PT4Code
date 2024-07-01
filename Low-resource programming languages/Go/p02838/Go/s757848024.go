package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func toInt(s string) int {
	i, e := strconv.Atoi(s)
	if e != nil {
		panic("it's NOT a number!!!")
	}
	return i
}

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	
	a := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i] = toInt(sc.Text())
	}
	
	ans := 0
	for i := 0; i < n; i++ {
		for m := i + 1; m < n; m++ {
			ans += a[i] ^ a[m]
		}
	}
	
	fmt.Println(ans % 1000000007)
}
