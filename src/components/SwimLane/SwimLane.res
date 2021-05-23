type ticket = {id: string, title: string}

@react.component
let make = (~tickets: array<ticket>, ~title: string) => {
  let content = {
    Belt.Array.map(tickets, tic => {
      <li key={tic.id}> <Card> {React.string(tic.title)} </Card> </li>
    })
  }

  <Column title={title}>
    <ul className="flex flex-1 flex-col space-y-4"> {React.array(content)} </ul>
  </Column>
}
