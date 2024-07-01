package main

import (
	"bufio"
	"fmt"
	"strconv"
	"strings"
    "os"
)

func main() {
	var N int

	var ln []int

	fmt.Scanf("%d", &N)
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	dn := scanner.Text()
	dn = strings.TrimSpace(dn)

	dnn := strings.Fields(dn)

	for j := range dnn {
		var iparam int
		iparam, _ = strconv.Atoi(dnn[j])
		ln = append(ln, iparam)
	}

	sum := 0

	for i:=0; i<(N-2); i++ {
		for j:=i+1; j<(N-1); j++ {
			for k:=j+1; k<N; k++ {
				if( ln[i] < ln[j] + ln[k] &&
					ln[j] < ln[i] + ln[k] &&
					ln[k] < ln[i] + ln[j]) {
						sum++
				}
			}
		}
	}
	fmt.Printf("%d\n", sum)
}
