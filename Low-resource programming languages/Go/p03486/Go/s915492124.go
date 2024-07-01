package main

import(
    "fmt"
    "sort"
    "strings"
)



func main() {
    var s,t string
    fmt.Scan(&s,&t)
    ans := "No"
    s = sortString(s)
    t = reverseString(sortString(t))
    if s < t{
        ans = "Yes"
    }
    fmt.Println(ans)
}





// Pairsort
type Pair struct {
    first,second int64
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

func scanNums(len int) (nums []int){
    var num int
    for i:=0; i<len; i++{
        fmt.Scan(&num)
        nums = append(nums,num)
    }
    return
}

func scanNums64(len int) (nums []int64){
    var num int64
    for i:=0; i<len; i++{
        fmt.Scan(&num)
        nums = append(nums,num)
    }
    return
}

func scanString(len int) (str []string){
    var s string
    for i:=0; i<len; i++{
        fmt.Scan(&s)
        str = append(str,s)
    }
    return
}

func scanTwoNums(n,m int) ([][]int){
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
