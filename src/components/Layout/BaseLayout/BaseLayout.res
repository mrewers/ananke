@react.component
let make = (~children: React.element) => {
  <React.Fragment> <Header /> <div className="flex flex-1"> children </div> </React.Fragment>
}
