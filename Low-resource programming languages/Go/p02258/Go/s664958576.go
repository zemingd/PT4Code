package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() (i int) {
	sc.Scan()
	i, _ = strconv.Atoi(sc.Text())
	return
}

func main() {
	n := next()
	s := []int{}
	for i := 0; i < n; {
		s = append(s, next())
		i++
	}
	var max int
	for i := 0; i < n; i++ {
		for j := 0; j < i; j++ {
			if max < s[j]-s[i] {
				max = s[j] - s[i]
			}
		}
	}

	fmt.Println(max)

}
