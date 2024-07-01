package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type cluster struct {
	status byte
	q      int
}

func main() {
	n := getInt()
	k := getInt()
	s := getString()

	clusters := make([]cluster, 0, n)
	clusters = append(clusters, cluster{status: s[0]})
	for i, j, sum := 0, 0, 0; ; i++ {
		if clusters[j].status != s[i] {
			clusters = append(clusters, cluster{status: s[i]})
			clusters[j].q = sum
			sum = 0
			j++
		}
		sum++

		if i == n-1 {
			clusters[j].q = sum
			break
		}
	}

	ans := 0
	i := 0
	m := len(clusters)
	for cnt := 0; i < m; i++ {
		ans += clusters[i].q
		if clusters[i].status == '0' {
			cnt++
		}
		if cnt == k {
			if i < m-1 {
				ans += clusters[i+1].q
				i++
			}
			break
		}
	}

	before := ans
	for ; i < m-1; i += 2 {
		tmp := before

		// しっぽ
		if i-k*2+1 == 0 {
			tmp -= clusters[0].q
		} else {
			tmp -= clusters[i-k*2].q + clusters[i-k*2+1].q
		}

		// あたま
		if m-i-2 == 0 {
			tmp += clusters[i+1].q
		} else {
			tmp += clusters[i+1].q + clusters[i+2].q
		}

		ans = max(ans, tmp)
		before = tmp
	}

	fmt.Println(ans)
}

func max(ns ...int) int {
	max := ns[0]
	for i := 1; i < len(ns); i++ {
		if max < ns[i] {
			max = ns[i]
		}
	}
	return max
}

// k = 2
// 0 1 0 1 0 1 0
// 8 2 2 5 1 3 1

//   0 1 0 1 0 1
// 1 0 1 0 1 0 1

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
