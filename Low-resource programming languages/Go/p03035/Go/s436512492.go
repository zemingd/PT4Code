package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func intSlice(str string) []int {
	splitted := strings.Split(str, " ")
	ret := make([]int, len(splitted))

	for i, str := range splitted {
		if strings.TrimSpace(str) != "" {
			n, _ := strconv.Atoi(str)
			ret[i] = n
		}
	}

	return ret
}

func main() {

	stdin := bufio.NewScanner(os.Stdin)

	// 一行目
	stdin.Scan()
	line1 := stdin.Text()
	ints1 := intSlice(line1)
	a := ints1[0]
	b := ints1[1]

	if a <= 5 {
		fmt.Println("0")
	} else if a < 13 {
		fmt.Printf("%d\n", b/2)
	} else {
		fmt.Printf("%d\n", b)
	}
}
