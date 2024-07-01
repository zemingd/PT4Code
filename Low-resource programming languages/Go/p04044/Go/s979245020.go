import (
	"fmt"
	"sort"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	var w []string
	for i := 0; i < n; i++ {
		var temp string
		fmt.Scan(&temp)
		w = append(w, temp)
	}

	sort.Strings(w)

	fmt.Println(strings.Join(w, ""))
}