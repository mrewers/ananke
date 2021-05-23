@react.component
let make = (~title: option<string>=?) => {
  let pageTitle = switch title {
  | Some(title) => title
  | None => "Ananke"
  }

  <header className="bg-raisin px-4 py-8 shadow-md text-canvas-light">
    <span className="font-bold text-3xl">
      <a className="focus-light px-4 py-2" href="/"> {React.string(pageTitle)} </a>
    </span>
  </header>
}
