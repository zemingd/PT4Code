package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	S := next()
	i := 0
	for _, s := range S {
		k := (int)(s - '0')
		i = (i + k) % 9
	}
	if i%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
