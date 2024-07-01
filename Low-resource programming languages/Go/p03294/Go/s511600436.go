package main

import "fmt"
import "bufio"
import "os"
import "strconv"

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
var sc = bufio.NewScanner(os.Stdin)

func gcd(m int, n int) int {
	if n > m {
		tmp := n
		n = m
		m = tmp;
	}
	
	var tmp_n int

	for {
		tmp_n = n
		n = m % n
		m = tmp_n

		if n == 0 {
			break
		}
	}
	return m
}

func lcm(m int, n int) int {
	return m * n / gcd(m, n)
}
 
func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var a []int
	for i := 0; i < n; i++ {
		a = append(a, nextInt())
	}

	l := 1
	for i := 0; i < n; i++ {
		l = lcm(l, a[i])
	}

	ans := 0
	for i := 0; i < n; i++ {
		ans += (l - 1) % a[i]
	}

	fmt.Println(ans)
}