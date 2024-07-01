package main

import "fmt"

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var n, a, b, c, d int
	// a, b, c, dは全て異なる
	// Aにふぬけ君、Bにすぬけ君がいる。最終的にCにふぬけ君、Dにすぬけ君がいるようにしたい。
	// ふぬけ君、すぬけ君とも右にしか移動できない。
	// a < b, a < c, b < d - ただしb/cの大小関係は指定されていない
	fmt.Scan(&n, &a, &b, &c, &d)
	a-- // 0-indexed
	b--
	c--
	d--
	s := make([]byte, n)
	fmt.Scan(&s)
	// g := min(c,d)とbの間に連続した岩がある場合は到達不可能
	// そうでない場合、c < dならば到達可能
	// そうでない場合、追い越し区間を確保できれば到達可能
	for i := b; i < max(c, d); i++ {
		if s[i] == '#' && s[i+1] == '#' {
			fmt.Println("No")
			return
		}
	}
	passBy := false
	if c < d {
		fmt.Println("Yes")
		return
	} else if s[b-1] == '.' && s[b+1] == '.' {
		passBy = true
	} else {
		for i := b + 1; i < n-2; i++ {
			if s[i] == '.' && s[i+1] == '.' && s[i+2] == '.' {
				passBy = true
				break
			}
		}
	}
	if passBy {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
