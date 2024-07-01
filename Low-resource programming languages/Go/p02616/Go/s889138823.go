package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

type MyInt struct {
	sign bool
	abs  int
}

func conv(a int) MyInt {
	if a > 0 {
		return MyInt{true, a}
	} else {
		return MyInt{false, -a}
	}
}

type SortArray []MyInt

func (sa SortArray) Len() int {
	return len(sa)
}

func (sa SortArray) Less(i, j int) bool {
	return sa[i].abs > sa[j].abs
}

func (sa SortArray) Swap(i, j int) {
	sa[i], sa[j] = sa[j], sa[i]
}

const DIV int = 1e9 + 7

func my_main() int {
	N, K := nextInt(), nextInt()
	A := make([]int, N)
	pos_count, neg_count, zero_count := 0, 0, 0
	for i := 0; i < N; i++ {
		A[i] = nextInt()
		if A[i] > 0 {
			pos_count++
		} else if A[i] < 0 {
			neg_count++
		} else {
			zero_count++
		}
	}

	if N-K < zero_count {
		return 0
	}

	if N == K {
		prod := 1
		for i := 0; i < N; i++ {
			prod = (prod * A[i]) % DIV
		}
		return prod
	}

	if pos_count == 0 && K%2 == 1 {
		if zero_count > 0 {
			return 0
		} else {
			sort.Ints(A)
			prod := 1
			for i := 1; i <= K; i++ {
				prod = (prod * A[N-i]) % DIV
			}
			return prod
		}
	}

	ind := 0
	var myints SortArray = make([]MyInt, pos_count+neg_count)
	for i := 0; i < N; i++ {
		if A[i] != 0 {
			myints[ind] = conv(A[i])
			ind++
		}
	}

	sort.Sort(myints)

	pos_min_ind := -1
	neg_min_ind := -1
	fin_sign := true

	for i := 0; i < K; i++ {
		if myints[i].sign {
			pos_min_ind = i
		} else {
			neg_min_ind = i
			fin_sign = !fin_sign
		}
	}

	if fin_sign {
		prod := 1
		for i := 0; i < K; i++ {
			prod = (prod * myints[i].abs) % DIV
		}
		return prod
	}

	pos_max_ind := -1
	for i := K; i < N; i++ {
		if myints[i].sign {
			pos_max_ind = i
			break
		}
	}
	neg_max_ind := -1
	for i := K; i < N; i++ {
		if !myints[i].sign {
			neg_max_ind = i
			break
		}
	}

	if neg_min_ind < 0 || pos_max_ind < 0 {
		myints.Swap(pos_min_ind, neg_max_ind)
	} else if pos_min_ind < 0 || neg_max_ind < 0 {
		myints.Swap(neg_min_ind, pos_max_ind)
	} else if myints[pos_max_ind].abs*myints[pos_min_ind].abs > myints[neg_max_ind].abs*myints[neg_min_ind].abs {
		myints.Swap(neg_min_ind, pos_max_ind)
	} else {
		myints.Swap(pos_min_ind, neg_max_ind)
	}

	prod := 1
	for i := 0; i < K; i++ {
		prod = (prod * myints[i].abs) % DIV
	}
	return prod
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	prod := my_main()

	if prod < 0 {
		fmt.Println(prod + DIV)
	} else {
		fmt.Println(prod)
	}
}
