package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type As [][]int

func (a As) Len() int {
	return len(a)
}

func (a As) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a As) Less(i, j int) bool {
	return a[i][1] > a[j][1]
}

const mod = int(1e9 + 7)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	as := make(As, n)
	var spc, smc int
	for i := range as {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		as[i] = []int{a, abs(a)}
		if a >= 0 {
			spc++
		} else {
			smc++
		}
	}
	mode := true
	pk := k
	if k%2 == 1 {
		if spc > 0 {
			spc--
			pk--
		} else {
			mode = false
		}
	}
	if mode && (smc-smc%2)+(spc-spc%2) < pk {
		mode = false
	}

	m := make(map[int]int)
	if mode {
		sort.Sort(as)

		pmin := int(1e9 + 1)
		mmin := int(1e9 + 1)
		var mc int
		for i := 0; i < k; i++ {
			m[as[i][0]]++
			if as[i][0] >= 0 {
				if as[i][1] < pmin {
					pmin = as[i][1]
				}
			} else {
				mc++
				if as[i][1] < mmin {
					mmin = as[i][1]
				}
			}
		}
		if mc%2 == 1 {
			pmax := 0
			mmax := 0
			for i := k; i < n; i++ {
				if as[i][0] >= 0 {
					if as[i][1] > pmax {
						pmax = as[i][1]
					}
				} else {
					if as[i][1] > mmax {
						mmax = as[i][1]
					}
				}
			}
			if pmin*pmax > mmin*mmax {
				if pmax > 0 && mmin < 1e9+1 {
					m[-mmin]--
					m[pmax]++
				}
			} else {
				if mmax > 0 && pmin < 1e9+1 {
					m[pmin]--
					m[-mmax]++
				}
			}
		}
	} else {
		sort.Sort(sort.Reverse(as))

		for i := 0; i < k; i++ {
			m[as[i][0]]++
		}
	}
	ans := 1
	for key, val := range m {
		for i := 0; i < val; i++ {
			ans *= key
			ans %= mod
			if ans < 0 {
				ans += mod
			}
		}
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
