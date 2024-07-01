package main

import (
	"fmt"
	"io"
	"math"
	"os"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	var left, right int
	_, _ = fmt.Fscanf(stdin, "%d %d\n", &left, &right)

	modLeft := left % 2019
	modRight := right % 2019

	// 間に2019個より多い数があれば n % 2019 == 0 を満たすnが必ず存在
	// modLeft >= modRight の場合も left <= n <= right, n % 2019 == 0 を満たすnが必ず存在
	// modLeft < modRight の場合は間に n % 2019 == 0 を満たすnが存在しないので，↓が最小になるはず
	if right-left+1 > 2019 || modLeft >= modRight {
		_, _ = fmt.Fprint(stdout, "0\n")
	} else {
		answer := 2019
		for i := modLeft; i < modRight-1; i++ {
			for j := i + 1; j < modRight; j++ {
				tmp := i * j % 2019
				answer = int(math.Min(float64(answer), float64(tmp)))
			}
		}
	}

	return
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}
