package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Scan()
	one := strings.Fields(sc.Text())
	N, _ := strconv.Atoi(one[0])
	K, _ := strconv.Atoi(one[1])
	okashis := []string{}
	for i := 1; i <= K; i++ {
		// d := nextInt()
		_ = nextInt()
		sc.Scan()
		A := strings.Fields(sc.Text())
		okashis = append(okashis, A...)
	}
	snukes := map[int]int{}
	for _, okashi := range okashis {
		i, _ := strconv.Atoi(okashi)
		snukes[i]++
	}
	ijime := 0
	for k := 1; k <= N; k++ {
		if snukes[k] == 0 {
			ijime++
		}
	}
	fmt.Print(ijime)
}