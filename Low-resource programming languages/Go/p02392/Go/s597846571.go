package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) (n int, err error) {
	sc.Scan()
	s := sc.Text()
	n, err = strconv.Atoi(s)
	return
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for {
		var a, b, c int
		var err error
		if a, err = nextInt(sc); err == nil {
			if b, err = nextInt(sc); err == nil {
				c, _ = nextInt(sc)
				switch {
				case a < b && b < c:
					fmt.Println("Yes")
				default:
					fmt.Println("No")
				}
			} else {
				break
			}
		} else {
			break
		}
	}
}

