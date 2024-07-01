package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n, k int64
	fmt.Scan(&n, &k)
	inputs := make([]int, n)
	for i := 0; i < int(n); i++ {
		fmt.Scan(&inputs[i])
	}
	sort.Ints(inputs)
	// count calc
	var nCount = int64(0)
	var pCount = int64(0)
	var zeroCount = int64(0)
	for i := 0; i < int(n); i++ {
		if inputs[i] < 0 {
			nCount++
		} else if inputs[i] > 0 {
			pCount++
		} else {
			zeroCount++
		}
	}
	// 結果がマイナスかどうか
	var nResultCount = nCount * pCount
	var zeroResultCount = zeroCount*(nCount+pCount) + (zeroCount * (zeroCount - 1) / 2)
	isNegativeResult := nResultCount > k
	isPositiveResult := nResultCount+zeroResultCount < k
	// count
	if isNegativeResult {
		var left = int64(math.MinInt64 / 10)
		var right = int64(0)
		for left+1 < right {
			var x = (left + right) / 2
			var total = int64(0)
			var pe = n - pCount
			var ne = nCount - 1
			var l = ne
			var r = n - 1
			var noHit = false
			for true {
				if int64(inputs[l]*inputs[r]) < x {
					break
				}
				if l == 0 {
					noHit = true
					break
				}
				l--
			}
			if noHit {
				left = x
				continue
			}
			// 左端
			total += l + 1
			for true {
				// 右に移動できるばあい
				if int64(inputs[l]*inputs[r-1]) < x {
					r--
					total += l + 1
				} else {
					if l == 0 {
						break
					}
					l--
				}
				if r == pe {
					break
				}
			}
			ok := total < k
			if ok {
				left = x
			} else {
				right = x
			}
		}
		fmt.Println(left)
	} else if isPositiveResult {
		var left = int64(0)
		var right = int64(math.MaxInt64 / 10)
		for left+1 < right {
			var x = (left + right) / 2
			var total = int64(0)
			// ph1
			{
				var pe = n - pCount
				var l = n - 1
				var r = pe
				var noHit = false
				for true {
					if int64(inputs[l]*inputs[r]) < x {
						break
					}
					if l == pe {
						noHit = true
						break
					}
					l--
				}
				if !noHit {
					// 右端
					// 同じindexが含まれるため1引く
					total += l - pe + 1 - 1
				}
				for !noHit {
					// 左に移動できるばあい
					if int64(inputs[l]*inputs[r+1]) < x {
						r++
						total += (l - pe + 1)
						// 同じindexが含まれるため1引く
						if l >= r {
							total--
						}
					} else {
						if l == pe {
							break
						}
						l--
					}
					if r == n-1 {
						break
					}
				}
			}
			// ph2
			{
				var ne = nCount - 1
				if ne <= 0 {
					// result
					total = total/2 + nResultCount + zeroResultCount
					ok := total < k
					if ok {
						left = x
					} else {
						right = x
					}
					continue
				}
				var l = int64(0)
				var r = ne
				var noHit = false
				for true {
					if int64(inputs[l]*inputs[r]) < x {
						break
					}
					if l == ne {
						noHit = true
						break
					}
					l++
				}
				if !noHit {
					// 左端
					// 同じindexが含まれるため1引く
					total += ne - l + 1 - 1
				}
				for !noHit {
					// 右に移動できるばあい
					if int64(inputs[l]*inputs[r-1]) < x {
						r--
						total += ne - l + 1
						// 同じindexが含まれるため1引く
						if l <= r {
							total--
						}
					} else {
						if l == ne {
							break
						}
						l++
					}
					if r == 0 {
						break
					}
				}
			}
			// result
			total = total/2 + nResultCount + zeroResultCount
			ok := total < k
			if ok {
				left = x
			} else {
				right = x
			}
		}
		fmt.Println(left)
	} else {
		fmt.Println(0)
	}
}