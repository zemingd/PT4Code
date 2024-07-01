package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	cnt, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	sc.Scan()
	t, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	var tsum int
	taste := make([]int, cnt)
	for i := 1; i <= cnt; i++ {
		taste[i-1] = t + i - 1
		tsum += t + i - 1
	}

	var sbst int
	absmin := tsum
	if absmin < 0 {
		absmin = absmin * -1
	}
	for i := 1; i <= cnt; i++ {
		if taste[i-1] > 0 {
			if absmin > taste[i-1] {
				absmin = taste[i-1]
				sbst = taste[i-1]
			}
		} else {
			if absmin > taste[i-1]*-1 {
				absmin = taste[i-1] * -1
				sbst = taste[i-1]
			}
		}
	}

	if tsum > 0 {
		if sbst > 0 {
			fmt.Println(tsum - sbst)
		} else {
			fmt.Println(tsum + sbst)
		}
	} else {
		if sbst > 0 {
			fmt.Println(tsum + sbst)
		} else {
			fmt.Println(tsum - sbst)
		}
	}

}