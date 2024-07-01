package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	d := make([]int, n)
	for i := 0; i< n; i++ {
		d[i] = nextInt()
	}

	total := 0
	for i := 0; i< n - 2; i++ {
		for j := i + 1; j< n -1; j++ {
			for k := j + 1; k< n; k++ {
				a := d[i]
				b := d[j]
				c := d[k]

				if a < b + c && b < c + a && c < a + b {
					total++
				}
			}
		}
	}

	fmt.Printf("%d", total)
}
