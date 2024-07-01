package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var monsters = map[int]int{}
	var braves = map[int]int{}
	var count int
	n := nextInt()
	for i := 0;i <= n; i++{
		monsters[i] = nextInt()
	}
	for i := 0;i < n; i++{
		braves[i] = nextInt()
	}
	for i := 0;i < n; i++{
		if monsters[i] <= braves[i] {
			monster := monsters[i]
			count += monsters[i]
			monsters[i] = 0
			braves[i] -= monster
			if monsters[i+1] <= braves[i] {
				count += monsters[i+1]
				monsters[i+1] = 0
			} else {
				count += braves[i]
				monsters[i+1] -= braves[i]
			}
		} else {
			count += braves[i]
			monsters[i] -= braves[i]
		}
	}
	fmt.Println(count)
}
