type behaviorType = [#button | #reset | #submit]

@react.component
let make = (
  ~behavior: option<behaviorType>=?,
  ~onClick: ReactEvent.Mouse.t => unit,
  ~text: string,
) => {
  let btnType = switch behavior {
  | Some(#reset) => "reset"
  | Some(#submit) => "submit"
  | Some(#button) => "button"
  | None => "button"
  }

  <button
    className="bg-green-200 border-2 border-green-600 font-bold m-4 py-2 px-4 rounded shadow text-green-600"
    onClick={onClick}
    type_={btnType}>
    {React.string(text)}
  </button>
}
