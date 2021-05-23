type lane = {id: string, title: string}

@react.component
let make = (~tickets: array<SwimLane.ticket>) => {
  let lanes: array<lane> = [
    {id: "1", title: "To Do"},
    {id: "2", title: "In Progress"},
    {id: "3", title: "Testing"},
    {id: "4", title: "Done"},
  ]

  let content = {
    Belt.Array.map(lanes, lane => {
      let inLane = ticket => (ticket: SwimLane.ticket).lane == lane.id

      let tix = Js.Array.filter(inLane, tickets)

      <SwimLane key={lane.id} tickets={tix} title={lane.title} />
    })
  }

  <ProjectLayout> <div className="flex"> {React.array(content)} </div> </ProjectLayout>
}
