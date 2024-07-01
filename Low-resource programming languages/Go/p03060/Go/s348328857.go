package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 20
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	c := make([]int, n)
	v := make([]int, n)
	for i := 0; i < n; i++ {
		v[i] = scanInt(sc)
	}
	for i := 0; i < n; i++ {
		c[i] = scanInt(sc)
	}

	// v-c
	var ans int
	for i := 0; i < n; i++ {
		tmp := v[i] - c[i]
		if tmp > 0 {
			ans += tmp
		}
	}
	fmt.Println(ans)
}
