package main

import (
	"fmt"
	"math/big"
	"strconv"
)

var N int
var Kstr string
var K = big.NewInt(0)
var cycleStartAt int
var cycle []int

func main() {
	fmt.Scan(&N, &Kstr)
	ctr := int64(0)
	ten := big.NewInt(10)
	for i := len(Kstr) - 1; i >= 0; i-- {
		val, _ := strconv.Atoi(string(Kstr[i]))
		K = new(big.Int).Add(K, new(big.Int).Mul(big.NewInt(int64(val)), new(big.Int).Exp(ten, big.NewInt(ctr), nil)))
		ctr++
	}
	towns := make([]*town, N+1)
	towns[0] = &town{
		next: 1,
		came: false,
	}
	for i := 1; i <= N; i++ {
		var next int
		fmt.Scan(&next)
		towns[i] = &town{
			next: next,
			came: false,
		}
	}
	cur := 1
	for {
		if towns[cur].came {
			cycleStartAt = cur
			break
		}
		towns[cur].came = true
		cur = towns[cur].next
	}
	cur = 0
	for i := 0; i <= N; i++ {
		if towns[cur].next == cycleStartAt {
			t := towns[cur]
			for {
				cycle = append(cycle, t.next)
				t = towns[t.next]
				if t.next == cycleStartAt {
					break
				}
			}
			break
		}
		cur = towns[cur].next
	}
	step := big.NewInt(0)
	cur = 1
	for {
		step = new(big.Int).Add(step, big.NewInt(1))
		currentTown := towns[cur]
		if currentTown.next == cycleStartAt {
			addr := new(big.Int).Mod(new(big.Int).Sub(K, step), big.NewInt(int64(len(cycle))))
			if addr.Int64() == 0 {
				panic("aa")
			}
			fmt.Print(cycle[addr.Int64()])
			return
		}
		cur = currentTown.next
	}
}

type town struct {
	next int
	came bool
}
