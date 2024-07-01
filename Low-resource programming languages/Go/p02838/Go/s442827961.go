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

func do(_, in1 string) (string, error) {
	s := strings.Split(in1, " ")
	A := make([]uint64, 0, len(s))
	for i := range s {
		num, _ := strconv.ParseUint(s[i], 10, 64)
		A = append(A, num)
	}

	var n uint64 = 0
	for i := 0; i < len(A); i++ {
		for j := i; j < len(A); j++ {
			n += (A[i] ^ A[j]) % q
			if n >= q {
				n = n % q
			}
		}
	}
	return strconv.FormatUint(n, 10), nil
}