package main

import (
	"fmt"
)

func judge(a, b, c int) string {

	var ab, bc, ca bool

	if a == b {
		ab = true
	}
	if b == c {
		bc = true
	}
	if c == a {
		ca = true
	}

	if ab && !bc && !ca {
		return "Yes"
	}

	if !ab && bc && !ca {
		return "Yes"
	}

	if !ab && !bc && ca {
		return "Yes"
	}

	return "No"
}

func main() {
	var a, b, c int

	fmt.Scan(&a, &b, &c)

	fmt.Println(judge(a, b, c))

}
