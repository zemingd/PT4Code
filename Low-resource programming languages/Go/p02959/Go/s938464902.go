package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func parseInt(s string) int {
	i, _ := strconv.Atoi(s)
	return i
}

func main() {
	n := bufio.NewScanner(os.Stdin)
	n.Scan()
	numN := parseInt(n.Text())
	n.Scan()
	var numsA []int
	for _, v := range strings.Split(n.Text(), " ") {
		numsA = append(numsA, parseInt(v))
	}
	n.Scan()
	var numsB []int
	for _, v := range strings.Split(n.Text(), " ") {
		numsB = append(numsB, parseInt(v))
	}

	count := 0
	for i := 0; i < numN; i++ {
		if numsB[i] >= numsA[i]+numsA[i+1] {
			count += numsA[i] + numsA[i+1]
		} else {
			count += numsB[i]
		}
	}
	fmt.Println(count)
}