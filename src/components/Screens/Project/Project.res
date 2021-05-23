@react.component
let make = (~id: string) => {
  <Layouts.Project> <h1> {React.string(`Configure Project ${id}`)} </h1> </Layouts.Project>
}
