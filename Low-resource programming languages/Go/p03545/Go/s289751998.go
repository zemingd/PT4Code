package main

import (
	"fmt"
	"strconv"
)

// Operation is struct
type Operation struct {
	val string
}

func (op *Operation) calc(num int, other int) int {
	if op.val == "+" {
		return num + other
	}
	return num - other
}

func main() {
	var input string

	fmt.Scan(&input)

	A, _ := strconv.Atoi(string(input[0]))
	B, _ := strconv.Atoi(string(input[1]))
	C, _ := strconv.Atoi(string(input[2]))
	D, _ := strconv.Atoi(string(input[3]))

	operations := []Operation{
		Operation{val: "+"},
		Operation{val: "-"},
	}

	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				res := 0

				res = operations[i].calc(A, B)
				res = operations[j].calc(res, C)
				res = operations[k].calc(res, D)

				if res == 7 {
					fmt.Printf("%d%s%d%s%d%s%d%s\n", A, operations[i].val, B, operations[j].val, C, operations[k].val, D, "=7")
					return
				}
			}
		}
	}
}
