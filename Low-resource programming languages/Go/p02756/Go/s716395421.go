package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	center := make([]string, len(S))
	for i, c := range []rune(S) {
		center[i] = string(c)
	}
	var Q int
	fmt.Scan(&Q)
	pre, epi := []string{}, []string{}
	reverseCount := 0
	for i := 0; i < Q; i++ {
		var T int
		fmt.Scan(&T)
		if T == 1 {
			reverseCount += 1
		} else {
			var F int
			var C string
			fmt.Scan(&F, &C)
			if F == 1 {
				if reverseCount%2 == 0 {
					// preが前
					pre = append(pre, C)
				} else {
					// epiが前
					epi = append(epi, C)
				}
			} else {
				if reverseCount%2 == 1 {
					// preが前
					pre = append(pre, C)
				} else {
					// epiが前
					epi = append(epi, C)
				}
			}
		}
	}

	// 答え構築 反転を考慮に入れる
	if reverseCount%2 == 0 {
		oldSkoolFuckinAdHocReverseForAtCoderGolangVer(pre)
		for _, p := range pre {
			fmt.Print(p)
		}
		for _, c := range center {
			fmt.Print(c)
		}
		for _, e := range epi {
			fmt.Print(e)
		}
	} else {
		oldSkoolFuckinAdHocReverseForAtCoderGolangVer(epi)
		oldSkoolFuckinAdHocReverseForAtCoderGolangVer(center)
		for _, e := range epi {
			fmt.Print(e)
		}
		for _, c := range center {
			fmt.Print(c)
		}
		for _, p := range pre {
			fmt.Print(p)
		}
	}
	// atcoderでは改行を無視してくれるけど一応流儀に則って
	fmt.Println()
}

func oldSkoolFuckinAdHocReverseForAtCoderGolangVer(arr []string) {
	for i, j := 0, len(arr)-1; i < j; i, j = i+1, j-1 {
		arr[i], arr[j] = arr[j], arr[i]
	}
}
