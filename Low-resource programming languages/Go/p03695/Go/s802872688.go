package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	n     int
	m     = make(map[string]bool)
	tmp   int
	count int
)

func intOfString(s string) int {
	tmp, _ := strconv.Atoi(s)
	return tmp
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n = intOfString(sc.Text())
	for sc.Scan() {
		tmp = intOfString(sc.Text())
		if tmp >= 3200 {
			count++
		} else if tmp >= 2800 {
			m["red"] = true
		} else if tmp >= 2400 {
			m["orange"] = true
		} else if tmp >= 2000 {
			m["yellow"] = true
		} else if tmp >= 1600 {
			m["blue"] = true
		} else if tmp >= 1200 {
			m["l-blue"] = true
		} else if tmp >= 800 {
			m["green"] = true
		} else if tmp >= 400 {
			m["brown"] = true
		} else {
			m["gray"] = true
		}
	}

	if count == 0 {
		fmt.Printf("%[1]d %[1]d\n", len(m))
	} else {
		fmt.Printf("%d %d\n", len(m), min(len(m)+count, 8))
	}

}

func min(x, y int) int {
	if x < y {
		return x
	}

	return y
}