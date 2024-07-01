package main

import (
	"fmt"
	"strconv"
	"strings"
)

func add(a, b int) int {
	return a + b
}

func del(a, b int) int {
	return a - b
}

func stringToInt(s string) int {
	i, _ := strconv.Atoi(s)
	return i
}

func intToOpe(i int) string {
	if i == 0 {
		return "+"
	} else {
		return "-"
	}
}

func main() {
	var ops1 []func(int, int) int
	ops1 = append(ops1, add)
	ops1 = append(ops1, del)
	s := ""
	fmt.Scan(&s)
	inputs := make([]int, 0, 4)
	for _, tmpS := range strings.Split(s, "") {
		inputs = append(inputs, stringToInt(tmpS))
	}

	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				if 7 == ops1[k](ops1[j](ops1[i](inputs[0], inputs[1]), inputs[2]), inputs[3]) {
					fmt.Printf("%d%s%d%s%d%s%d=7\n", inputs[0], intToOpe(i), inputs[1], intToOpe(j), inputs[2], intToOpe(k), inputs[3])
					return
				}
			}
		}
	}

}