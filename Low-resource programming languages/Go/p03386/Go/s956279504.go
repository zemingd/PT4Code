package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
)

var rdr = bufio.NewScanner(os.Stdin)

func main() {
	rdr.Scan()
	str := strings.Fields(rdr.Text())
	a, _ := strconv.Atoi(str[0])
	b, _ := strconv.Atoi(str[1])
	k, _ := strconv.Atoi(str[2])
	var last int

	for i := a; i < a+k; i++ {
		if i <= b {
			fmt.Println(i)
			last = i
		} else {
			break
		}
	}

	for i := b-k+1; i <= b; i++ {
		if i > last {
			fmt.Println(i)
		}
	}
}