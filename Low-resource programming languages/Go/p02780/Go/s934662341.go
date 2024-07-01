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
    tt := make([]float64, n-(k))
    
    for i := 0; i < k; i++{
        tt[0] += ev(t[i])
    }
    
    for i := 1; i < len(tt); i++{
        tt[i] = tt[i-1] - ev(t[i-1]) + ev(t[i+k])
    }
    
    max := 0.0
    
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