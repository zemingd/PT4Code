package main

import (
	"bufio"
	"fmt"
	"os"
)

var scanner = bufio.NewScanner(os.Stdin)

func init() {
	buf := make([]byte, 0)
	scanner.Buffer(buf, 1000000009)
	scanner.Split(bufio.ScanWords)
}

func main() {
	scanner.Scan()
	bs := []byte(scanner.Text())

	cnt := 0
	for {
		next := make([]byte, 0, len(bs))
		b := true
		i := 0
		for {
			if i < len(bs)-1 {
				if (bs[i] == '0' && bs[i+1] == '1') || (bs[i] == '1' && bs[i+1] == '0') {
					cnt += 2
					b = false
					i++
				} else {
					next = append(next, bs[i])
				}
				i++
			} else {
				if i == len(bs)-1 {
					next = append(next, bs[i])
				}
				break
			}
		}

		bs = next

		if b {
			break
		}
	}
	fmt.Println(cnt)
}