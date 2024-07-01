package main
import "fmt"
import "sort"
func main(){
    // Your code here!
    var n, k int
    fmt.Scan(&n, &k)
    
    v := [10]int{}
    for i := 0; i < n; i++{
        fmt.Scan(&v[i])
    }

    var get_num int
    var juwels []int
    var result int
    for i := 0; i <= n; i++{
        for j := i; j <= n; j++{
            get_num = i - j + n
            if get_num > k{
                continue
            }
            juwels = make([]int, i)
            copy(juwels, v[:i])
            juwels = append(juwels ,v[j:]...)
            sort.Ints(juwels)
            for l := 0; l < k - get_num; l++{
                if l >= len(juwels){
                    break
                }
                if juwels[l] <= 0{
                    juwels[l] = 0
                }
            }
            total := 0
            for l := 0; l < len(juwels); l++{
                total += juwels[l]
            }
            if result < total{
                result = total
            }
        }
    }
    fmt.Println(result)
}
