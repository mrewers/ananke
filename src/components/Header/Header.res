@react.component
let make = (~title: option<string>=?) => {
  let pageTitle = switch title {
  | Some(title) => title
  | None => "Ananke"
  }

  <header className="bg-raisin text-canvas-light">
    <h1 className="font-bold px-4 py-8 shadow-md text-3xl"> {React.string(pageTitle)} </h1>
  </header>
}
