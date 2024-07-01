package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Shop struct {
	price  int64
	amount int64
}

type Shops []Shop

func (s Shops) Len() int {
	return len(s)
}

func (s Shops) Less(a, b int) bool {
	return s[a].price < s[b].price
}

func (s Shops) Swap(a, b int) {
	s[a], s[b] = s[b], s[a]
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	nShops := scanInt(sc)
	nDesired := scanInt(sc)

	shops := make([]Shop, nShops)
	for i := 0; i < nShops; i++ {
		shops[i] = Shop{
			price:  int64(scanInt(sc)),
			amount: int64(scanInt(sc)),
		}
	}

	sort.Sort(Shops(shops))

	money := int64(0)
	nRest := int64(nDesired)
	for _, shop := range shops {
		nBought := min(nRest, shop.amount)
		money += shop.price * nBought
		nRest -= nBought
		if nRest == 0 {
			break
		}
	}

	fmt.Println(money)
}

func min(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
