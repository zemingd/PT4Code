package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	buf := []byte{}
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var N string = next()
	var sum int
	for i := 0; i < len(N); i++ {
		sum += int(N[i] - '0')
	}
	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
