package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {

	var s string
	count := 0
	var bb, cost, a, b int
	cost = 0
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

				if b <= bb {
					cost = a
				}
			}
			count++
		} else {
			break
		}

	}
	if cost == 0 {
		fmt.Println("TLE")
	} else {
		fmt.Println(cost)
	}

}