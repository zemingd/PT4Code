package main
import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    "sort"
)
var sc = bufio.NewScanner(os.Stdin)


func main() {
    sc.Split(bufio.ScanWords)
    // code goes here
    
    a, b, k := int(nextInt()), int(nextInt()), int(nextInt())
    var m []int
    
    for i := a; i <= b && i < a+k; i += 1 {
        m = append(m, i)
    }
    for i := b; a <= i && b-k < i; i -= 1 {
        m = append(m, i)
    }
    
    sort.Ints(m)
    
    last := 0
    for _, e := range m {
        if last != e {
            fmt.Println(e)
        }
        last = e
    }
    
}



func nextInt() int64 {
    sc.Scan()
    v, e := strconv.ParseInt(sc.Text(), 10, 64)
    if e != nil {
        panic(e)
    }
    return v
}
func nextString() string {
    sc.Scan()
    return sc.Text()
}
func nextFloat() float64 {
    sc.Scan()
    v, e := strconv.ParseFloat(sc.Text(), 64)
    if e != nil {
        panic(e)
    }
    return v
}