package main
 
import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}
 
func nextString() string {
	sc.Scan()
	return sc.Text()
}
 
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var ANS int64
func main() {
	N := int64(nextInt())
	N = int64Lcm(N, int64(7))
	for i := int64(7); i < int64(7777777777777777777); i = i * 10 + 7 {
		if i % N == 0 {
			fmt.Println(getDight(i))
			return
		}
	}
	fmt.Println(-1)
}

func getDight(a int64) int64{
  d := int64(0)
  div := int64(10)
  for a != int64(0) {
	  a = a / div
	  d++
  }
  return d
}

func gcd(a, b int) int {
	if b > a {
		a, b = b, a
	}
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}

func lcm(a, b int) int {
    return a * b / gcd(a, b);
}
func int64Lcm(a, b int64) int64 {
    return a * b / int64Gcd(a, b);
}

func int64Gcd(a, b int64) int64 {
	if b > a {
		a, b = b, a
	}
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}

func PrimeFactors(n int) (pfs []int) {
    // Get the number of 2s that divide n
    for n%2 == 0 {
        pfs = append(pfs, 2)
        n = n / 2
    }
    // n must be odd at this point. so we can skip one element
    // (note i = i + 2)
    for i := 3; i*i <= n; i = i + 2 {
        // while i divides n, append i and divide n
        for n%i == 0 {
            pfs = append(pfs, i)
            n = n / i
        }
    }
    // This condition is to handle the case when n is a prime number
    // greater than 2
    if n > 2 {
        pfs = append(pfs, n)
    }
    return
}
