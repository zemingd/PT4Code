// AtCode ABC 119 A
package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	heisei := time.Date(2019, 5, 1, 0,0,0, 0 , time.UTC)

	S := read()
	ymd := strings.Split(S, "/")
	y, _ := strconv.Atoi(ymd[0])
	m, _ := strconv.Atoi(ymd[1])
	d, _ := strconv.Atoi(ymd[2])
	date := time.Date(y, time.Month(m), d, 0 ,0 ,0, 0, time.UTC)
	if heisei.After(date) {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}

func read() string {
	sc.Scan()
	return sc.Text()
}
