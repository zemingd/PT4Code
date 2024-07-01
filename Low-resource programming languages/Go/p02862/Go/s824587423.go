package main

import (
	"fmt"
	"os"
)

func main() {
	var x, y int
	fmt.Scanf("%d %d", &x, &y)

	/*
		xJump = (+2, +1) 移動の回数
		yJump = (+1, +2) 移動の回数

		とすると

		x = 2 * xJump +     yJump
		y =     xJump + 2 * yJump

		になるはずなので、連立して

		2 * x     = 4 * xJump + 2 * yJump
		        y =     xJump + 2 * yJump
		---------------------------------

		2 * x - y = 3 * xJump

		xJump = (2 * x - y) / 3
		yJump = x - 2 * (2 * x - y) / 3
			  = (2 * y - x) / 3
	*/

	if (2*x-y)%3 != 0 || (2*y-x)%3 != 0 {
		fmt.Println("0")
		os.Exit(0)
	}

	xJump := (2*x - y) / 3
	yJump := (2*y - x) / 3

	if xJump < 0 || yJump < 0 {
		fmt.Println("0")
		os.Exit(0)
	}

	// total 回の移動のうち xJump を行う場所を選ぶので total_C_xJump mod 1000000007
	total := xJump + yJump
	mod := 1000000007

	fact := make([]int, total+1)
	fact[0], fact[1] = 1, 1

	inv := make([]int, total+1)
	inv[1] = 1

	factInv := make([]int, total+1)
	factInv[0], factInv[1] = 1, 1

	for x := 2; x <= total; x++ {
		fact[x] = (x * fact[x-1]) % mod
		inv[x] = (mod - (mod/x)*inv[mod%x]) % mod
		factInv[x] = (inv[x] * factInv[x-1]) % mod
	}

	// total_C_xJump = total! (x!)^-1 (t - x)!^-1
	ans := (fact[total] * factInv[xJump]) % mod
	ans = (ans * factInv[total-xJump]) % mod
	fmt.Printf("%d\n", ans)
}
