package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	tmp, _ := reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")
	nk := strings.Split(tmp, " ")

	//n, _ := strconv.Atoi(nk[0])
	//x, _ := strconv.Atoi(nk[1])
	x, _ := strconv.ParseInt(nk[1], 10, 64)

	tmp2, _ := reader.ReadString('\n')
	tmp2 = strings.Trim(tmp2, "\n")
	l := strings.Split(tmp2, " ")

	pos := int64(0)
	count := 0

	for i, li := range l {
		if pos <= x {
			step, _ := strconv.ParseInt(li, 10, 64)
			pos += step
			count++
			if i+1 == len(l) {
				if pos == x {
					count++
				}
			}
		} else {
			break
		}
	}
	fmt.Println(count)
}
