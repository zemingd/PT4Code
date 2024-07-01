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

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	s := nextString()
	if n < 4 {
		fmt.Println(0)
		return
	}
	sum := 0
	for i := 0; i < n-3; i++ {
		for j := i + 1; j < n-1; j++ {
			if s[i] != s[j] {
				for k := j + 1; k < n; k++ {
					if s[i] != s[k] && s[j] != s[k] && j-i != k-j {
						sum++
					}
				}
			}
		}
	}
	fmt.Println(sum)
}
