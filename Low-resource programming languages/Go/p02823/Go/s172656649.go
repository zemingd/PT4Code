package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n, a, b string
	fmt.Scan(&n, &a, &b)
	N, _ := strconv.ParseInt(n, 10, 64)
	A, _ := strconv.ParseInt(a, 10, 64)
	B, _ := strconv.ParseInt(b, 10, 64)

	var res int64
	// fmt.Println(N, A, B)

	if (B-A)%2 == 0 {
		res = (B - A) / 2
	} else {
		oneA := A - 1
		oneB := B - 1
		AN := N - A
		BN := N - B

		ABDistance := oneA + oneB
		// fmt.Println(ABDistance)
		ANBNDistance := AN + BN
		// fmt.Println(ANBNDistance)
		var distance int64
		if ABDistance > ANBNDistance {
			distance = ABDistance - ANBNDistance
		} else {
			distance = ANBNDistance - ABDistance
		}

		if distance%2 == 0 {
			res = distance / 2
		} else {
			res = (distance + 1) / 2
		}

	}
	fmt.Println(res)
}
