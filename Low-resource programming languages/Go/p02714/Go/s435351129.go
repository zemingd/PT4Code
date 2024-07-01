package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()
	s := readString()

	a := make([]int, n)
	for i, v := range s {
		switch v {
		case 'R':
			a[i] = 0
		case 'G':
			a[i] = 1
		case 'B':
			a[i] = 2
		}
	}
	count := make([]int, 3)
	for i := 0; i < n; i++ {
		count[a[i]]++
	}
	ans := 1
	for _, v := range count {
		ans *= v
	}

	for j := 1; j < n; j++ {
		for i := 0; i < j; i++ {
			k := j + j - i
			if k < n {
				if a[i] == a[j] {
					continue
				}
				if a[j] == a[k] {
					continue
				}
				if a[i] == a[k] {
					continue
				}
				ans--
			}
		}
	}
	fmt.Println(ans)
}
