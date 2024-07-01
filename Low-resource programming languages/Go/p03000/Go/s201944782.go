package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	tmp, _ := reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")
	nk := strings.Split(tmp, " ")

	n, _ := strconv.Atoi(nk[0])
	x, _ := strconv.Atoi(nk[1])

	tmp2, _ := reader.ReadString('\n')
	tmp2 = strings.Trim(tmp2, "\n")
	l := strings.Split(tmp2, " ")

	count := 0

	sum := make([]int, n+1)
	sum[0] = 0
	for i, li := range l {
		step, _ := strconv.Atoi(li)
		sum[i+1] = sum[i] + step
	}

	for i := 0; i < len(sum); i++ {
		if sum[i] > x {
			break
		} else {
			count++
		}
	}

	fmt.Println(count)
}
