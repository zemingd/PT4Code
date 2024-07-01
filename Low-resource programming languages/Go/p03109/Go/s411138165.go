package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"time"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	s := sc.Text()
	layout := "2006/01/02"
	t, _ := time.Parse(layout, s)
	a, _ := time.Parse(layout, "2019/04/30")
	if !t.After(a) {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}

}