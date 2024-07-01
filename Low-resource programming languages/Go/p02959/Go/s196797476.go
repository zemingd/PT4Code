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
		if numsA[i] >= numsB[i]{
			count += numsB[i]
		}else if numsA[i] < numsB[i]{
			if numN[i] + numsA[i+1] >= numsB[i]{
				count += numsB[i]
				numsA[i+1] = numN[i] + numsA[i+1] - numsB[i]
			} else{
				count += numsA[i+1] = numN[i]
				numsA[i+1] = 0
			}
		}
	}
	fmt.Println(count)
}
