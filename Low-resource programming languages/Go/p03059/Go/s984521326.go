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
	var abc [3]int
	var num = 3
	tmp, _ := reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")
	tmpslice := strings.Split(tmp, " ")
	for i := 0; i < num; i++ {
		abc[i], _ = strconv.Atoi(tmpslice[i])
	}

	T := float64(abc[2]) + 0.5
	b := abc[1]
	a := abc[0]

	var count int
	for i := 1; i < int(T)/a+1; i++ {
		if T > 0 && T < float64(a*(i+1)) {
			count = i
			break
		} else if T < 0 {
			count = i - 1
			break
		}
	}

	fmt.Println(b * count)
	return

}
