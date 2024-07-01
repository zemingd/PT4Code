package main

import (
	"fmt"
	"math"
	"strconv"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)

	list := []int{}
	aa := strings.Split(a, "")
	for _, item := range aa {
		a, _ := strconv.Atoi(item)
		list = append(list, a)
	}

	pattern := math.Pow(2, 3)

	for i := 0; i < int(pattern); i++ {
		exp := make([]int, 3, 3)
		tmp := list[0]
		for j := 0; j < 3; j++ {
			v := (uint16(i) >> uint16(j)) & 1
			exp[j] = int(v)
			switch v {
			case 0x0:
				tmp += list[j+1]
			case 0x01:
				tmp -= list[j+1]
			}
		}
		if tmp == 7 {
			fmt.Printf("%#v", list[0])
			for j := 0; j < 3; j++ {
				fmt.Printf("%v%v", Expression(exp[j]), list[j+1])
			}
			fmt.Println("=7")
			return
		}
	}
}

func Expression(i int) string {
	if i == 0 {
		return "+"
	}
	return "-"
}
