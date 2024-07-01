package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	circ, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	pointNum, _ := strconv.Atoi(sc.Text())

	var distance []int = make([]int, pointNum)
	var diffNum []int = make([]int, pointNum)
	var maxNum int = 0
	for i := 0; i < pointNum; i++ {
		sc.Scan()
		distance[i], _ = strconv.Atoi(sc.Text())
		if i != 0 {
			diffNum[i] = distance[i] - distance[i-1]
			if diffNum[i] > maxNum {
				maxNum = diffNum[i]
			}
		}
	}
	diffNum[0] = circ + distance[0] - distance[pointNum-1]
	if diffNum[0] > maxNum {
		maxNum = diffNum[0]
	}

	fmt.Println(circ - maxNum)
}
