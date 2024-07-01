package main

import (
	"os"
	"fmt"
	"bufio"
	"strconv"
)

func abs(n int) int {
	if n < 0 {
		return -n
	} else {
		return n
	}
}

func pow(a int, b int) int {
	ans := 1
	for i:=0; i < b; i++ {
		ans *= a
	}
	return ans
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	
	X, _ := strconv.Atoi(sc.Text())

	max := 1
	for b := 1; b < X; b++ {
		for p := 2; p < X ; p++ {
			exp := pow(b, p)
			if exp > X {
				break
			}

			if max < exp {
				max = exp
			}


		}
	}

	fmt.Println(max)

}