package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	var S string
	fmt.Scan(&S)
	s := make([]int, 1)
	s[0] = 0
	cnt := 1
	prev, _ := strconv.Atoi(string(S[0]))
	for i := 1; i < N; i++ {
		tmp, _ := strconv.Atoi(string(S[i]))
		if i != N-1 {
			if tmp == prev {
				cnt++
			} else {
				if prev == 1 {
					s = append(s, cnt)
				} else {
					s = append(s, -cnt)
				}
				cnt = 1
				prev = tmp
			}
		} else {
			if prev == tmp {
				cnt++
				if prev == 1 {
					s = append(s, cnt)
				} else {
					s = append(s, -cnt)
				}
			} else {
				if prev == 1 {
					s = append(s, cnt)
					s = append(s, -1)
				} else {
					s = append(s, -cnt)
					s = append(s, 1)
				}
			}
		}
	}
	cnt0 := 0
	for i := 1; i < len(s); i++ {
		if s[i] < 0 {
			cnt0++
		}
	}
	var max int
	prev = 0
	if cnt0 <= K {
		fmt.Println(N)
	} else {
		for i := 0; i < len(s)-2*K; i++ {
			if s[i] == 0 {
				cnt = 0
				for _, x := range s {
					if x >= 0 {
						max += x
						if cnt == K {
							break
						}
					} else {
						max += (-1 * x)
						cnt++
					}
				}
				prev = max
			} else if s[i] > 0 && i != 1 {
				tmp := prev - s[i-2] + s[i-1] - s[i+2*K-1] + s[i+2*K]
				if tmp > max {
					max = tmp
				}
				prev = tmp
			}
		}
		fmt.Println(max)
	}
}
