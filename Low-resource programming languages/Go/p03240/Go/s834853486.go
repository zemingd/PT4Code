package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type point struct {
	x, y, h int
}

func main() {
	n := getInt()

	points := make([]point, n)
	for i := range points {
		points[i].x = getInt()
		points[i].y = getInt()
		points[i].h = getInt()
	}

	for X := 0; X <= 100; X++ {
		for Y := 0; Y <= 100; Y++ {
			top := points[0].h + abs(X-points[0].x) + abs(Y-points[0].y)
			flag := true
			for _, p := range points {
				if p.h == 0 {
					continue
				}
				if top != p.h+abs(X-p.x)+abs(Y-p.y) {
					flag = false
					break
				}
			}
			if flag == true {
				for _, p := range points {
					if p.h == 0 && p.h != top-abs(X-p.x)-abs(Y-p.y) {
						break
					}
				}
				fmt.Println(X, Y, top)
			}
		}
	}
}


// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
