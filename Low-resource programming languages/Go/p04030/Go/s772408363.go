package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func r() []byte {
	sc.Scan()
	return sc.Bytes()
}

func main() {
	sc.Split(bufio.ScanWords)

	ans := make([]byte, 0, 10)
	for _, v := range r() {
		switch v {
		case 48, 49:
			ans = append(ans, v)
		case 66:
			if len(ans) != 0 {
				ans = ans[:len(ans)-1]
			}
		}
	}

	fmt.Println(string(ans))
}
