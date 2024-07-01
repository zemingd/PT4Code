package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func fill(a []int, initValue int) {
	for i := 0; i < len(a); i++ {
		a[i] = initValue
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()

	a := make([]int, n)
	fill(a, -1)

	var u, v, w int
	for i := 0; i < n-1; i++ {
		u, v, w = ri(), ri(), ri()
		if w%2 == 0 {
			u--
			v--
			switch a[u] {
			case -1:
				switch a[v] {
				case -1:
					a[u], a[v] = 0, 1
				case 0:
					a[u] = 1
				case 1:
					a[v] = 0
				}
			case 0:
				a[v] = 1
			case 1:
				a[v] = 1
			}
		}
	}

	for _, aa := range a {
		if aa == -1 {
			aa = 0
		}
		fmt.Println(aa)
	}
}
