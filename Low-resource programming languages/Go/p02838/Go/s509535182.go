package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var q uint64 = 1000000007

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	in0 := stdin.Text()
	stdin.Scan()
	in1 := stdin.Text()
	out, _ := do(in0, in1)
	fmt.Println(out)
}

func do(in0, in1 string) (string, error) {
	s := strings.Split(in1, " ")
	A := make([]uint64, 0, len(s))
	for i := range s {
		num, _ := strconv.ParseUint(s[i], 10, 64)
		A = append(A, num)
	}

	var n uint64 = 0
	for i := 0; i < len(A)-1; i++ {
		for j := i + 1; j < len(A); j++ {
			n = n + ((A[i] ^ A[j]) % q)
		}
	}
	return strconv.FormatUint(n%q, 10), nil
}
