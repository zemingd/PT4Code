package main
import "fmt"
func main(){
    // Your code here!
    var n int
    fmt.Scan(&n)
    t := make([]int, n)
    var k int
    fmt.Scan(&k)
    for i := 0; i < n; i++ {
        fmt.Scan(&t[i])
    }
    tt := make([]float64, n-(k-1))
    //fmt.Println(tt)
    for i := 0; i < k; i++{
        tt[0] += ev(t[i])
    }
    //fmt.Println(tt)
    for i := 1; i < len(tt); i++{
        //fmt.Println(t[i-1], t[i+k-1])
        tt[i] = tt[i-1] - ev(t[i-1]) + ev(t[i+k-1])
        //fmt.Println(tt)
    }
    
    max := 0.0
    //fmt.Println(tt)
    for i := 0; i < len(tt); i++{
        if max < tt[i]{
            max = tt[i]
        }
    }
    fmt.Println(max)
}

func ev(v int) float64{
    var sum int
    for i := 1; i <= v; i++{
        sum += i
    }
    return float64(sum)/float64(v)
}