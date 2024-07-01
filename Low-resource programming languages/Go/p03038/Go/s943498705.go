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
    var n,m int
    fmt.Scan(&n,&m)
    a := scanNums(n)
    b := scanPairs(m)
    sort.Ints(a)
    By(second).Sort(b)
    ai := 0
    bi := m-1
    for bi>-1{
        if ai>=n || a[ai]>=b[bi].second{
            break
        }
        for b[bi].first>0{
            if ai>=n{
                break
            }
            if a[ai]<b[bi].second {
                a[ai] = b[bi].second
                b[bi].first--
                ai++
            } else {
                break
            }
        }
        bi--
    }
    ans := int64(0)
    for i:=0;i<n;i++{
        ans += int64(a[i])
    }
    fmt.Println(ans)
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

func gcd(a, b int64) int64 {
    if a % b == 0 {
        return b
    } else {
        return gcd(b, a%b)
    }
}

func lcm(a, b int64) int64 {
    return a / gcd(a, b) * b
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

func readLineNums64(len int) (nums []int64){
    var num int64
    for i:=0; i<len; i++{
        tmp,_ := strconv.Atoi(nextLine())
        num = int64(tmp)
        nums = append(nums,num)
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
/*
func readOneLineNums64(len int) []int64{
    nums := make([]int64, 0, len+10)
    var num int
    sc.Split(bufio.ScanWords)
    for i:=0; i<len; i++{
        num = nextInt()
        nums = append(nums,num)
    }
    return nums
}
*/
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

