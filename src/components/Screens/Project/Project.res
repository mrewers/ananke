@react.component
let make = (~id: string) => {
  <ProjectLayout> <h2> {React.string(`Configure Project ${id}`)} </h2> </ProjectLayout>
}
