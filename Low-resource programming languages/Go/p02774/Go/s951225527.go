package main
import "fmt"
import "strconv"
import "sort"
func main(){
    // Your code here!
    var n int
    fmt.Scan(&n)
    t := make([]string, n)
    var k int
    fmt.Scan(&k)
    for i := 0; i < n; i++ {
        fmt.Scan(&t[i])
    }
    
    tt := ll_multi(nC2(t))
    sort.Ints(tt)
    fmt.Println(tt[k])
}

func ll_multi(ll [][]string) []int{
    t := make([]int, len(ll))
    for i := 0; i<len(t); i++{
        a, _ := strconv.Atoi(ll[i][0])
        b, _ := strconv.Atoi(ll[i][1])
        t[i] = a * b 
    }
    return t
}

func nC2(ll []string) [][]string{
    c := 0
    t := make_2d_slice((len(ll)*(len(ll)-1))/2, 2)
    for i := 0; i < len(ll); i++{
        for n := i; n < len(ll); n++{
            if i < n{
                t[c][0] = ll[i]
                t[c][1] = ll[n]
                c++
            }
        }
    }
    return t
}

func make_2d_slice(n int, m int) [][]string{
    graph := make([][]string, n)
    for i:=0; i<n; i++{
        graph[i] = make([]string, m)
    }
    return graph
}