package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func nextString() string {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	return s
}

func conditionA(s string, i, j, k int) bool {
	i--
	j--
	k--
	return s[i] != s[j] &&
		s[i] != s[k] &&
		s[j] != s[k]
}

func conditionB(i, j, k int) bool {
	return (j - i) != (k - j)
}

func main() {
	sc.Split(bufio.ScanWords)
	var count int
	n, s := nextInt(), nextString()

	for i := 0; i < n; i++ {
		if 1 < i && s[i-1] == s[i] {
			if i == n-1 {
				fmt.Println(count)
				return
			}
		} else {
			break
		}
	}

	for i := 1; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			if s[i-1] == s[j-1] {
				continue
			}
			for k := j + 1; k <= n; k++ {
				if conditionA(s, i, j, k) && conditionB(i, j, k) {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}
