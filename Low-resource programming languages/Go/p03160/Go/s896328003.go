package main

import(
    "fmt"
    "bufio"
    "os"
    "sort"
    "strings"
    "strconv"
)



func main() {
    var n int
    fmt.Scan(&n)
    h := readOneLineNums(n)
    dp := make([]int, n+1)
    for i:=1;i<=n;i++{
        dp[i] = 1000000000
    }
    for i:=0;i<n-1;i++{
        dp[i+1] = min32(dp[i+1],dp[i] + abs32(h[i]-h[i+1]))
        if i+2<n{
            dp[i+2] = min32(dp[i+2],dp[i] + abs32(h[i]-h[i+2]))
        }
    }
    fmt.Println(dp[n-1])
}





// Pairsort
type Pair struct {
    first,second int
}

type By func(p1, p2 *Pair) bool

func (by By) Sort(pairs []Pair) {
    ps := &pairSorter{
            pairs : pairs,
            by: by,
    }
    sort.Sort(ps)
}

type pairSorter struct {
    pairs []Pair
    by func(p1, p2 *Pair) bool
}

func (s *pairSorter) Len() int {
    return len(s.pairs)
}

func (s *pairSorter) Swap(i, j int) {
    s.pairs[i], s.pairs[j] = s.pairs[j], s.pairs[i]
}

func (s *pairSorter) Less(i, j int) bool {
    return s.by(&s.pairs[i], &s.pairs[j])
}

func first (p1, p2 *Pair) bool {
        return p1.first < p2.first
}

func second (p1, p2 *Pair) bool {
        return p1.second < p2.second
}
// end

func scanPairs(len int) []Pair{
    Pairs := make([]Pair, len)
    for i:=0; i<len; i++{
        fmt.Scan(&Pairs[i].first,&Pairs[i].second)
    }
    return Pairs
}



func abs32(a int) int {
    if a<0{
        return -a
    }
    return a
}

func abs64(a int64) int64 {
    if a<0{
        return -a
    }
    return a
}

func min32(a, b int) int {
    if a >= b {
        return b
    }
    return a
}

func max32(a, b int) int {
    if a >= b {
        return a
    }
    return b
}

func min64(a, b int64) int64 {
    if a >= b {
        return b
    }
    return a
}

func max64(a, b int64) int64 {
    if a >= b {
        return a
    }
    return b
}

func gcd64(a, b int64) int64 {
    if a % b == 0 {
        return b
    } else {
        return gcd64(b, a%b)
    }
}

func lcm64(a, b int64) int64 {
    return a / gcd64(a, b) * b
}

// 入力処理
var sc = bufio.NewScanner(os.Stdin)
func nextLine() string {
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

func readLineNums(len int) (nums []int){
    for i:=0; i<len; i++{
        tmp,_ := strconv.Atoi(nextLine())
        nums = append(nums,tmp)
    }
    return
}

func readOneLineNums(len int) []int{
    nums := make([]int, 0, len+10)
    var num int
    sc.Split(bufio.ScanWords)
    for i:=0; i<len; i++{
        num = nextInt()
        nums = append(nums,num)
    }
    return nums
}

func scanNums(len int) []int{
    nums := make([]int, 0, len+10)
    var num int
    for i:=0; i<len; i++{
        fmt.Scan(&num)
        nums = append(nums,num)
    }
    return nums
}

func scanNums64(len int) []int64{
    nums := make([]int64, 0, len+10)
    var num int64
    for i:=0; i<len; i++{
        fmt.Scan(&num)
        nums = append(nums,num)
    }
    return nums
}

func scanString(len int) (str []string){
    var s string
    for i:=0; i<len; i++{
        fmt.Scan(&s)
        str = append(str,s)
    }
    return
}

func makeTwoNums(n,m int) ([][]int){
    Nums := make([][]int, n)
    for i:=0; i<n; i++{
        Nums[i] = make([]int, m)
    }
    return Nums
}

func sortString(s string) string{
    t := strings.Split(s, "")
    sort.Strings(t)
    return strings.Join(t, "")
}

func reverseString(s string) string{
    t := []rune(s)
    for i,j := 0, len(s)-1 ; i < j ; i, j = i+1, j-1 {
        t[i], t[j] = t[j], t[i]
    }
    return string(t)
}

func stringRev(s []byte,l int,r int) []byte{
    for i:=0;i<(r-l+1)/2;i++{
        s[l-1+i], s[r-1-i] = s[r-1-i], s[l-1+i]
    }
    return s
}

func inside(h,w,H,W int) bool{
    if h>=0 && h<H && w>=0 && w<W{
        return true
    }
    return false
}

