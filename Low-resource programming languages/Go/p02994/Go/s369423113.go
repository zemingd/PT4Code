package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func Abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	tmp, _ := reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")
	tmp2 := strings.Split(tmp, " ")

	n, _ := strconv.Atoi(tmp2[0])
	l, _ := strconv.Atoi(tmp2[1])

	result1 := n*(1+n)/2 + (l-1)*n

	diff := Abs(l)
	pos := 1
	for i := 2; i < n+1; i++ {
		if Abs(l+i-1) < diff {
			diff = Abs(l + i - 1)
			pos = i
		}
	}

	fmt.Println(result1 - (l + pos - 1))

}
