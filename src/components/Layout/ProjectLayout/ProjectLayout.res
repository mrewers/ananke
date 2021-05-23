@react.component
let make = (~children: React.element) => {
  <BaseLayout> <ProjectNav /> <main className="flex-1"> children </main> </BaseLayout>
}
