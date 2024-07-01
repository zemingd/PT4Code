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
	for stdin.Scan() {
		in := stdin.Text()
		out, _ := do(in)
		fmt.Println(out)
	}

}

func do(in string) (string, error) {
	s := strings.Split(in, " ")
	var A []int
	for i := range s {
		num, _ := strconv.Atoi(s[i])
		A = append(A, num)
	}
	if A[0] >= A[2] {
		return fmt.Sprintf("%d %d", A[0]-A[2], A[1]), nil
	}
	if A[0]+A[1] >= A[2] {
		return fmt.Sprintf("%d %d", 0, A[0]+A[1]-A[2]), nil
	}
	return "0 0", nil
}
