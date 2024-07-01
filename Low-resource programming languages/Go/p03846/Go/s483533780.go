package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	a := make([]int, n)
	d := 1000000007
	for i := 0; i < n; i++ {
		t, _ := strconv.Atoi(stringLineScan())
		a[t]++
	}
	if n%2 == 0 {
		ans := 1
		for i := 1; i < n; i += 2 {
			if a[i] == 2 {
				ans *= 2
				ans %= d
			} else {
				ans = 0
				break
			}
		}
		fmt.Println(ans)
	} else {
		ans := 1
		if a[0] == 1 {
			for i := 2; i < n; i += 2 {
				if a[i] == 2 {
					ans *= 2
					ans %= d
				} else {
					ans = 0
					break
				}
			}
			fmt.Println(ans)
		} else {
			fmt.Println(0)
		}
	}
}
