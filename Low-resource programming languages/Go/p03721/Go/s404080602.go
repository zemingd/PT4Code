package main

import (
	"bufio"
	"fmt"
	"io"
	"math/rand"
	"os"
	"reflect"
	"strconv"
	"unsafe"
)

var (
	readString func() string
	stdout     *bufio.Writer
)

func init() {
	readString = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readIntSlice(n int) []int {
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = readInt()
	}
	return b
}

func readLengthAndSlice() []int {
	n := readInt()
	return readIntSlice(n)
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdout, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
}

func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int
func main() {
	defer stdout.Flush()

	N := readInt()
	K := readInt()
	p := make([]Pair, N)
	for i := range p {
		p[i].a = readInt()
		p[i].b = readInt()
	}
	SortSliceStable(p, func(i, j int) bool { return p[i].a < p[j].a })
	i := 0
	j := 0
	for ; i < N && j+p[i].b < K; i++ {
		j += p[i].b
	}
	println(p[i].a)
}

type Pair struct {
	a, b int
}

func SortSlice(a interface{}, less func(i, j int) bool) {
	v := reflect.ValueOf(a)
	switch v.Kind() {
	case reflect.Slice, reflect.Array:
		_sort_sort(v, less)
	default:
		panic("Sort(): invalid type")
	}
}

func _sort_swapper(a reflect.Value) func(i, j int) {
	data := a.Pointer()
	n := a.Len()
	sz := int(a.Index(0).Type().Size())
	var swap func(i, j int)
	if sz%8 == 0 {
		m := sz / 8

		var buf []int64
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
		sp.Data = data
		sp.Len = n * m
		sp.Cap = n * m
		swap = func(i, j int) {
			for k := 0; k < m; k++ {
				x := i*m + k
				y := j*m + k
				buf[x], buf[y] = buf[y], buf[x]
			}
		}
	} else if sz%4 == 0 {
		m := sz / 4

		var buf []int32
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
		sp.Data = data
		sp.Len = n * m
		sp.Cap = n * m
		swap = func(i, j int) {
			for k := 0; k < m; k++ {
				x := i*m + k
				y := j*m + k
				buf[x], buf[y] = buf[y], buf[x]
			}
		}
	} else if sz%2 == 0 {
		m := sz / 2

		var buf []int16
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
		sp.Data = data
		sp.Len = n * m
		sp.Cap = n * m
		swap = func(i, j int) {
			for k := 0; k < m; k++ {
				x := i*m + k
				y := j*m + k
				buf[x], buf[y] = buf[y], buf[x]
			}
		}
	} else {
		m := sz

		var buf []int8
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
		sp.Data = data
		sp.Len = n * m
		sp.Cap = n * m
		swap = func(i, j int) {
			for k := 0; k < m; k++ {
				x := i*m + k
				y := j*m + k
				buf[x], buf[y] = buf[y], buf[x]
			}
		}
	}
	return swap
}

func _sort_swapper1(a reflect.Value) func(i, j int) {
	adata := a.Pointer()
	alen := a.Len()
	acap := a.Cap()
	sz := a.Index(0).Type().Size()
	switch sz {
	case 32:
		var s [][4]int64
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		sp.Data = adata
		sp.Len = alen
		sp.Cap = acap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 24:
		var s [][3]int64
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		sp.Data = adata
		sp.Len = alen
		sp.Cap = acap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 16:
		var s [][2]int64
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		sp.Data = adata
		sp.Len = alen
		sp.Cap = acap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 8:
		var s []int64
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		sp.Data = adata
		sp.Len = alen
		sp.Cap = acap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 4:
		var s []int32
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		sp.Data = adata
		sp.Len = alen
		sp.Cap = acap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 2:
		var s []int16
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		sp.Data = adata
		sp.Len = alen
		sp.Cap = acap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 1:
		var s []int8
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		sp.Data = adata
		sp.Len = alen
		sp.Cap = acap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	}

	tmp := reflect.Indirect(reflect.New(a.Index(0).Type()))
	return func(i, j int) {
		vi := a.Index(i)
		vj := a.Index(j)
		tmp.Set(vi)
		vi.Set(vj)
		vj.Set(tmp)
	}
}

type _sort_less_swap struct {
	less func(i, j int) bool
	swap func(i, j int)
}

func _sort_pivot(fs _sort_less_swap, l, r int) int {
	less := fs.less
	swap := fs.swap
	x := rand.Int()%(r-l+1) + l
	swap(l, x)
	m := l
	i := l + 1
	j := r
	for {
		for i <= r && less(i, m) {
			i++
		}
		for l < j && !less(j, m) {
			j--
		}
		if j < i {
			break
		}
		swap(i, j)
	}
	swap(m, j)
	return j
}

func _sort_sort(a reflect.Value, less func(i, j int) bool) {
	n := a.Len()
	if n <= 1 {
		// already sorted
		return
	}
	less_swap := _sort_less_swap{
		less: less,
		swap: _sort_swapper(a),
	}
	_sort_quick(less_swap, 0, n-1)
}

func _sort_quick(fs _sort_less_swap, l, r int) {
	st := make([][2]int, 0)
	push := func(i, j int) {
		st = append(st, [2]int{i, j})
	}
	pop := func() (int, int) {
		n := len(st)

		r := st[n-1]
		st = st[:n-1]
		return r[0], r[1]
	}

	push(l, r)
	for len(st) != 0 {
		l, r := pop()
		if r <= l+8 {
			_sort_insertion(fs, l, r)
			continue
		}
		m := _sort_pivot(fs, l, r)
		push(l, m-1)
		push(m+1, r)
	}
}

func _sort_insertion(fs _sort_less_swap, l, r int) {
	less := fs.less
	swap := fs.swap
	for i := l + 1; i <= r; i++ {
		for j := i - 1; l <= j && less(j+1, j); j-- {
			swap(j+1, j)
		}
	}
}

func SortSliceStable(a interface{}, less func(i, j int) bool) {
	v := reflect.ValueOf(a)

	cptemp, cpback := _sort_cptemper(v)
	fs := _sort_cptemp{cptemp, cpback, less}
	n := v.Len()
	sz := 1
	for sz < n {
		i := 0
		for i+2*sz <= n {
			_sort_merge(fs, i, i+sz, i+2*sz)
			i += 2 * sz
		}
		if i+sz < n {
			_sort_merge(fs, i, i+sz, n)
		}
		sz *= 2
	}
}

type _sort_cptemp struct {
	cptemp func(i, j int)
	cpback func(i, j int)
	less   func(i, j int) bool
}

func _sort_cptemper(v reflect.Value) (func(i, j int), func(i, j int)) {
	n := v.Len()
	sz := int(v.Index(0).Type().Size())
	var cptemp, cpback func(i, j int)
	if sz%8 == 0 {
		m := sz / 8
		tmp := make([]int64, n*m)

		var buf []int64
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
		sp.Data = v.Pointer()
		sp.Len = n * m
		sp.Cap = n * m
		cptemp = func(i, j int) {
			for k := 0; k < m; k++ {
				tmp[i*m+k] = buf[j*m+k]
			}
		}
		cpback = func(i, j int) {
			for k := 0; k < m; k++ {
				buf[i*m+k] = tmp[j*m+k]
			}
		}
	} else if sz%4 == 0 {
		m := sz / 4
		tmp := make([]int32, n*m)

		var buf []int32
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
		sp.Data = v.Pointer()
		sp.Len = n * m
		sp.Cap = n * m
		cptemp = func(i, j int) {
			for k := 0; k < m; k++ {
				tmp[i*m+k] = buf[j*m+k]
			}
		}
		cpback = func(i, j int) {
			for k := 0; k < m; k++ {
				buf[i*m+k] = tmp[j*m+k]
			}
		}
	} else if sz%2 == 0 {
		m := sz / 2
		tmp := make([]int16, n*m)

		var buf []int16
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
		sp.Data = v.Pointer()
		sp.Len = n * m
		sp.Cap = n * m
		cptemp = func(i, j int) {
			for k := 0; k < m; k++ {
				tmp[i*m+k] = buf[j*m+k]
			}
		}
		cpback = func(i, j int) {
			for k := 0; k < m; k++ {
				buf[i*m+k] = tmp[j*m+k]
			}
		}
	} else {
		m := sz
		tmp := make([]int8, n*m)

		var buf []int8
		sp := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
		sp.Data = v.Pointer()
		sp.Len = n * m
		sp.Cap = n * m
		cptemp = func(i, j int) {
			for k := 0; k < m; k++ {
				tmp[i*m+k] = buf[j*m+k]
			}
		}
		cpback = func(i, j int) {
			for k := 0; k < m; k++ {
				buf[i*m+k] = tmp[j*m+k]
			}
		}
	}
	return cptemp, cpback
}

func _sort_merge(fs _sort_cptemp, l, m, r int) {
	cptemp := fs.cptemp
	cpback := fs.cpback
	less := fs.less

	i := l
	j := m
	k := l
	for i < m && j < r {
		if less(j, i) {
			cptemp(k, j)
			j++
		} else {
			cptemp(k, i)
			i++
		}
		k++
	}
	for i < m {
		cptemp(k, i)
		i++
		k++
	}
	for j < r {
		cptemp(k, j)
		j++
		k++
	}
	for i := l; i < k; i++ {
		cpback(i, i)
	}
}
