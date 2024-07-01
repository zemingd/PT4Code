package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var N int

	var sdn []int

	fmt.Scanf("%d", &N)
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	dn := scanner.Text()
	dn = strings.TrimSpace(dn)

	dnn := strings.Fields(dn)

	for j := range dnn {
		var iparam int
		iparam, _ = strconv.Atoi(dnn[j])
		sdn = append(sdn, iparam)
	}

	sum := 0

	for i := 0; i < (N - 1); i++ {
      for k := i+1; k < N; k++ {
			sum += sdn[i] * sdn[k]
		}
	}

	fmt.Printf("%d\n", sum)
}
