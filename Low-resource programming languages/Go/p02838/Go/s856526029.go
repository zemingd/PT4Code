package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 100000)
	stdin.Buffer(buf, 1000000)
	stdin.Scan()
	in0 := stdin.Text()
	stdin.Scan()
	in1 := stdin.Text()
	out, _ := do(in0, in1)
	fmt.Println(out)
}

func do(_, in1 string) (string, error) {
	var q = 1000000007

	s := strings.Split(in1, " ")
	A := make([]int, 0, len(s))
	for i := range s {
		num, _ := strconv.Atoi(s[i])
		A = append(A, num)
	}

	var n = 0
	for digit := 0; digit <= 60; digit++ {
		var sum int
		for _, bit := range A {
			bit = (bit >> digit) & 1
			sum += bit
		}
		sum = sum * (len(A) - sum)
		n = n + (sum<<digit)%q
	}
	return strconv.Itoa(n % q), nil
}