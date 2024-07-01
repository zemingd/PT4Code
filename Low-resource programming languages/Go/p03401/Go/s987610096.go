package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	s := make([]int, n+1)
	for i := 0; i < n; i++ {
		s[i] = nextInt()
	}

	var stat, sum, kn int

	for i := 0; i < n; i++ {
		sum = 0
		stat = 0
		for k := 0; k < n+1; k++ {
			kn = s[k]
			if i == k {
				continue
			} else {
				t := stat - kn
				if t < 0 {
					t = -t
				}
				sum += t
				stat = kn
			}
		}

		fmt.Println(sum)
	}
}
