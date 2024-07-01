package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	var n int

	if sc.Scan() {
		line := sc.Text()
		n, _ = strconv.Atoi(line)
	}

	a := make([]int, n + 1)
	b := make([]int, n)

	if sc.Scan() {
		line := sc.Text()
		for i, data := range strings.Split(line, " ") {
			dataInt, _ := strconv.Atoi(data)
			a[i] = dataInt
		}
	}

	if sc.Scan() {
		line := sc.Text()
		for i, data := range strings.Split(line, " ") {
			dataInt, _ := strconv.Atoi(data)
			b[i] = dataInt
		}
	}

	cnt := 0
	for i := 0; i < n; i++ {
		rest := a[i] - b[i]
		if rest < 0 {
			rest *= -1

			cnt += a[i]
			a[i] = 0

			rest2 := a[i+1] - rest
			if rest2 < 0 {
				cnt += a[i+1]
				a[i+1] = 0
			} else {
				cnt += rest
				a[i+1] = -rest2
			}
		} else {
			cnt += b[i]
			a[i] = -rest
		}
	}

	fmt.Println(cnt)
}