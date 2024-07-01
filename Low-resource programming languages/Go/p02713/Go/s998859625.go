package main

import (
	"fmt"
	"strconv"
	"strings"
	"bufio"
	"os"
)

func gcd(a, b int) int {
    if b == 0 {
        return a
    }
    return gcd(b, a%b)
}

func gcd3(a, b, c int) int {
	return gcd(gcd(a, b), c)
}

// 文字列を1行取得
func StrStdin() (stringInput string) {
    scanner := bufio.NewScanner(os.Stdin)

    scanner.Scan()
    stringInput = scanner.Text()

    stringInput = strings.TrimSpace(stringInput)
    return
}

// 整数値1つ取得
func IntStdin() (int, error) {
    stringInput := StrStdin()
    return strconv.Atoi(strings.TrimSpace(stringInput))
}

func main() {
	K, _ := IntStdin()
	
	ans := 0
	for i := 1; i <= K; i++ {
		for j := i; j <= K; j++ {
			for k := j; k <= K; k++ {
				a := gcd3(i, j, k)
				if i == j && j == k {
					ans += a
				} else if i == j || j == k {
					ans += a * 3
				} else {
					ans += a * 3 * 2
				}
			}
		}
	}
	fmt.Println(ans)
}

