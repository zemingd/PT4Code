package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	var s string
	count := 0
	var bb, cost, a, b int
	cost = 10000
	nocost := 1
	for {
		bool := sc.Scan()
		if bool {
			s = sc.Text()
			s2 := strings.Split(s, " ")
			if count == 0 {
				bb, _ = strconv.Atoi(s2[1])
			} else {
				a, _ = strconv.Atoi(s2[0])
				b, _ = strconv.Atoi(s2[1])

				if b <= bb && a < cost {
					cost = a
					nocost = 0
				}
			}
			count++
		} else {
			break
		}

	}
	if nocost == 1 {
		fmt.Println("TLE")
	} else {
		fmt.Println(cost)
	}

}