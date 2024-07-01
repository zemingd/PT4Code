package main

import "fmt"

const (
	plus = iota
	minus
)

func main() {
	var abcd string
	fmt.Scan(&abcd)

	a := int(rune(abcd[0]) - '0')
	b := int(rune(abcd[1]) - '0')
	c := int(rune(abcd[2]) - '0')
	d := int(rune(abcd[3]) - '0')

	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				if calc(calc(calc(a, b, i), c, j), d, k) == 7 {
					fmt.Println(format(a, b, c, d, i, j, k))
					return
				}
			}
		}
	}
}

func calc(a, b int, ope int) int {
	if ope == plus {
		return a + b
	} else {
		return a - b
	}
}

func opeStr(ope int) string {
	if ope == plus {
		return "+"
	} else {
		return "-"
	}
}

func format(a, b, c, d int, opeA, opeB, opeC int) string {
	return fmt.Sprintf("%d%s%d%s%d%s%d=7", a, opeStr(opeA), b, opeStr(opeB), c, opeStr(opeC), d)
}