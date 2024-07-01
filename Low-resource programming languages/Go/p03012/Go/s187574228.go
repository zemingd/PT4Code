package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var n, sum, former, latter int
	var mid float64

	fmt.Scanln(&n)

	Ws := make([]int, n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	for i := range Ws {
		sc.Scan()
		Ws[i], _ = strconv.Atoi(sc.Text())
		sum += Ws[i]
	}

	mid = float64(sum) / 2.0

	var balance int
	for i := range Ws {
		if float64(former+Ws[i]) >= mid {
			balance = i
			break
		}
		former += Ws[i]
	}

	for i := balance + 1; i < n; i++ {
		latter += Ws[i]
	}

	if former <= latter {
		former += Ws[balance]
	} else {
		latter += Ws[balance]
	}

	fmt.Println(math.Abs(float64(former - latter)))
}
