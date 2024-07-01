package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"math/big"
	"os"
	"strconv"
	"strings"
)

func Run(r io.Reader, w io.Writer) {
	sc := bufio.NewScanner(r)
	sc.Scan()
	sc.Scan()
	a := strings.Split(sc.Text(), " ")

	A := make([]int64, len(a))
	for i := range A {
		A[i], _ = strconv.ParseInt(a[i], 10, 64)
	}

	n := big.NewInt(0)
	for i := 0; i < len(A); i++ {
		for j := i + 1; j < len(A); j++ {
			n.Add(n, big.NewInt(A[i]*A[j]))
		}
	}

	n.Mod(n, big.NewInt(int64(math.Pow(10, 9)+7)))
	fmt.Fprintln(w, n.String())
}

func main() {
	Run(os.Stdin, os.Stdout)
}
