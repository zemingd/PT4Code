package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var h, w, x, y int64
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		line := sc.Text()
		arr := strings.Fields(line)
		w, _ = strconv.ParseInt(arr[0], 10, 32)
		h, _ = strconv.ParseInt(arr[1], 10, 32)
		x, _ = strconv.ParseInt(arr[2], 10, 32)
		y, _ = strconv.ParseInt(arr[3], 10, 32)
	}

	area := float64(w*h) / 2.0
	var flag int
	if 2*x == w && 2*y == h {
		flag = 1
	} else {
		flag = 0
	}
	fmt.Printf("%f %d\n", area, flag)
}
