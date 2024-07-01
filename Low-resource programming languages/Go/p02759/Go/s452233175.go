import (
	"fmt"
)

func main() {
	var pageCount int
	fmt.Scanf("%d", &pageCount)
	var needPageCount int
	needPageCount = pageCount / 2
	if pageCount%2 != 0 {
		needPageCount++
	}
	fmt.Println(needPageCount)
}