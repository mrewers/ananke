switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<Hello />, root)
| None => ()
}
