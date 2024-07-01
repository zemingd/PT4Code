package main
 
import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

func main(){
    
    N := nextInt()
    K := nextInt()
    X := nextInt()
    Y := nextInt()

    l := (N - K)
	if l < 0 {
		l = 0
	}
	if N < K {
		K = N
	}
	fmt.Println(K * X + l * Y)
     
    
}
 
/* templates */


func Max(a []int) int {
    r := a[0]
    for i := 0; i < len(a); i++ {
        if r < a[i] {
            r = a[i]
        }
    }
    return r
}
 
func Min(a []int) int {
    r := a[0]
    for i := 0; i < len(a); i++ {
        if r > a[i] {
            r = a[i]
        }
    }
    return r
}
 
func Sum(a []int) (r int) {
    for i := range a {
        r += a[i]
    }
    return r
}
 
func Abs(a float64) float64 {
    if a < 0 {
        return -a
    }
    return a
}
 
type Pair struct {
    a, b int
}
 
type Pairs []Pair
 
func (p Pairs) Len() int {
    return len(p)
}
 
func (p Pairs) Swap(i, j int) {
    p[i], p[j] = p[j], p[i]
}
 
func (p Pairs) Less(i, j int) bool {
    return p[i].b < p[j].b
}
 
var nextReader func() string
 
func init() {
    nextReader = NewScanner()
}
 
func NewScanner() func() string {
    r := bufio.NewScanner(os.Stdin)
    r.Buffer(make([]byte, 1024), int(1e+11))
    r.Split(bufio.ScanWords)
    return func() string {
        r.Scan()
        return r.Text()
    }
}

func nextString() string {
    return nextReader()
}
 
func nextInt64() int64 {
    v, _ := strconv.ParseInt(nextReader(), 10, 64)
    return v
}
 
func nextInt() int {
    v, _ := strconv.Atoi(nextReader())
    return v
}
 
func nextInts(n int) []int {
    r := make([]int, n)
    for i := 0; i < n; i++ {
        r[i] = nextInt()
    }
    return r
}

func nextStrings(n int) []string {
    r := make([]string, n)
    for i := 0; i < n; i++ {
        r[i] = nextString()
    }
    return r
}

func nextFloat64() float64 {
    f, _ := strconv.ParseFloat(nextReader(), 64)
    return f
}
