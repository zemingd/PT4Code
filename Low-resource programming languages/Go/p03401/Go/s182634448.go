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

	s := []int{}
	for i := 0; i < n; i++ {
		s = append(s, nextInt())
	}

	s = append(s, 0)
	var stat int
	size := len(s)
	for i := 0; i < size-1; i++ {
		var sum int
		stat = 0
		for k := 0; k < size; k++ {
			kn := s[k]
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
