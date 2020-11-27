package apis

import (
	"fmt"
	"net/http"
	"github.com/gorilla/mux"
)

func PodStatus(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("pod is running!!"))
}

func RestAPIs() {
	r := mux.NewRouter()
	fmt.Println("running rest endpoints")
	r.HandleFunc("/", PodStatus).Methods("GET")
	http.ListenAndServe(":8080", r)
}
