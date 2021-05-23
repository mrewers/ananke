@react.component
let make = (~tickets: array<SwimLane.ticket>) => {
  let content = {
    Belt.Array.map(tickets, tic => {
      <li key={tic.id}> <Card> {React.string(tic.title)} </Card> </li>
    })
  }

  <Layouts.Project>
    <Column title="Backlog">
      <ul className="flex flex-1 flex-col space-y-4"> {React.array(content)} </ul>
    </Column>
  </Layouts.Project>
}
