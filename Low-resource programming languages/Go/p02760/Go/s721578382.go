package main

import (
	"fmt"
	"io"
	"os"
)

func run(input io.Reader, output io.Writer) int {
	var ai [3][3]int
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scanf("%d", &ai[i][j])
		}
		fmt.Scanf("\n")
	}
	var n int
	fmt.Scanf("%d\n", &n)
	bi := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d\n", &bi[i])
	}

	var ri [][3]int
	for i := 0; i < 3; i++ {
		ri = append(ri, ai[i])
	}

	var tmp [3]int
	for j := 0; j < 3; j++ {
		for i := 0; i < 3; i++ {
			tmp[i] = ai[i][j]
		}
		ri = append(ri, tmp)
	}

	tmp[0] = ai[0][0]
	tmp[1] = ai[1][1]
	tmp[2] = ai[2][2]
	ri = append(ri, tmp)

	tmp[0] = ai[0][2]
	tmp[1] = ai[1][1]
	tmp[2] = ai[2][0]
	ri = append(ri, tmp)

	for _, r := range ri {
		sum := 0
		for i := 0; i < 3; i++ {
			found := false
			for _, b := range bi {
				if b == r[i] {
					found = true
					break
				}
			}

			if found {
				sum += 1
			} else {
				break
			}
		}

		if sum >= 3 {
			fmt.Println("Yes")
			return 0
		}
	}

	fmt.Println("No")

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
