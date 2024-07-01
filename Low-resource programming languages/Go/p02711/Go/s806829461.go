package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n := Scanner()
	f := false
	for i := 0; i < len(n); i++ {
		if string(n[i]) == "7" {
			f = true
		}
	}
	if f {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
