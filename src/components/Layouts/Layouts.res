module Base = {
  @react.component
  let make = (~children: React.element) => {
    <React.Fragment> <Header /> <div className="flex flex-1"> children </div> </React.Fragment>
  }
}

module Project = {
  @react.component
  let make = (~children: React.element, ~title: option<string>=?) => {
    let pageTitle = switch title {
    | Some(title) => <h1> {React.string(title)} </h1>
    | None => React.null
    }

    <Base> <ProjectNav /> <main className="flex-1"> pageTitle children </main> </Base>
  }
}
