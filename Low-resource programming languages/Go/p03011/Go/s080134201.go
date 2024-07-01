import (
    "fmt"
    "sort"
)

func main() {
    var p, q, r int
    fmt.Scanf("%d %d %d", &p, &q, &r)
    candidates := []int{p + q, q + r, p + r, q + r, p + r, q + p}
    sort.Sort(sort.IntSlice(candidates))
    fmt.Printf("%d", candidates[0])
}