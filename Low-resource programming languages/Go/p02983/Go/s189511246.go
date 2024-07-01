package main

import (
	"fmt"
	"io"
	"os"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	var left, right int
	_, _ = fmt.Fscanf(stdin, "%d %d\n", &left, &right)

	modLeft := left % 2019
	modRight := right % 2019

	// 間に2019個以上の数があれば n % 2019 == 0 を満たすnが必ず存在
	// modLeft >= modRight の場合も left <= n <= right, n % 2019 == 0 を満たすnが必ず存在
	// modLeft < modRight の場合は間に n % 2019 == 0 を満たすnが存在しないので，↓が最小になるはず
	if right-left+1 > 2019 || modLeft >= modRight {
		_, _ = fmt.Fprint(stdout, "0\n")
	} else {
		_, _ = fmt.Fprintf(stdout, "%d\n", (modLeft*(modLeft+1))%2019)
	}

	return
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}
