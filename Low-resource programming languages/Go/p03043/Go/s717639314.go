package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, _ := strconv.Atoi(input())
	k, _ := strconv.Atoi(input())

	cntList := make([]uint, n)
	for i := 0; i < n; i++ {
		score := i + 1
		for score < k {
			score *= 2
			cntList[i]++
		}
	}

	ans := float64(0)
	for i := 0; i < n; i++ {
		d := 1 << cntList[i]
		d *= n
		ans += 1 / float64(d)
	}

	fmt.Println(ans)
}
